# Issue workflow status

Applies equally to Epic, Task, and Defect. Source of truth for status labels and transitions. Skills must follow this — do not invent parallel statuses.

## Labels

Exactly **one** `status:*` label per typed issue. Skills swap via `enforce-task-workflow-status`.

| Label | Meaning |
|-------|---------|
| `status:pending-review` | Awaiting review (default on create) |
| `status:pending-refinement` | Reviewed; refinements needed |
| `status:pending-clarification` | Needs product-owner clarification |
| `status:pending-implementation` | Passed review; ready or in progress |
| `status:pending-verification` | Implemented; awaiting verification |
| `status:pending-acceptance` | Verified; awaiting acceptance testing |
| `status:accepted` | Accepted; **leave open** (do not close) |

Catalog: [`docs/labels.md`](../labels.md).

## Transitions and evidence

Evidence is freeform prose; intent must be clear. Post evidence as an issue comment (except refinement, which also edits the body). Then call `enforce-task-workflow-status` to apply the next label.

| From | Action / evidence | To |
|------|-------------------|-----|
| pending-review | Pass review (latest comment); body consistent; deliverables/AC align with parent or project vision; note new requirements | pending-implementation |
| pending-review | Fail review: problems + refinement direction; name impacted related issues | pending-refinement (self + named related) |
| pending-review | Gaps that cannot be inferred from project scope: clarification questions | pending-clarification |
| pending-refinement | Refined issue body + summary comment | pending-review |
| pending-clarification | PO clarification comment | pending-review, or pending-refinement if refine still needed |
| pending-implementation | Comment summarizing deliverables (PRs/commits) | pending-verification |
| pending-verification | Independent pass: checked each deliverable; standards followed; adequate tests | pending-acceptance |
| pending-verification | Fail: detail issues | pending-implementation |
| pending-acceptance | Accept: repo-locatable test evidence per AC; related PRs | accepted (keep open) |
| pending-acceptance | Fail: link created defect | pending-implementation |
| pending-acceptance | Cannot test without PO input | pending-clarification |

Reviews are holistic against the whole issue and its parent/sibling relationships, including after prior refinements.

## Cascade (fail review)

Move only the reviewed issue plus issues the fail comment **explicitly names** as impacted. Do not auto-cascade the whole tree.

## Independence

Verification and acceptance must not be done in the same session that posted the implementation summary. Prefer a different comment author than that summary when detectable.

## Skills

| Skill | Role |
|-------|------|
| `enforce-task-workflow-status` | Gate transitions; audit/repair status labels |
| `review-project-issue` | Review pass / fail / clarify |
| `refine-project-issue` | Body refine → pending-review |
| `clarify-project-issue` | Record PO clarification |
| `implement-project-issue` | Implementation summary → pending-verification |
| `verify-project-issue` | Independent verify pass / fail |
| `accept-project-issue` | Accept / fail / clarify |
| `issue-workflow-review-agent` | Background dispatch → `review-project-issue` |
| `issue-workflow-refine-agent` | Background dispatch → `refine-project-issue` |
| `issue-workflow-clarify-agent` | Background dispatch → `clarify-project-issue` |
| `issue-workflow-implement-agent` | Background dispatch → implement work + `implement-project-issue` |
| `issue-workflow-verify-agent` | Background dispatch → `verify-project-issue` |
| `issue-workflow-accept-agent` | Background dispatch → `accept-project-issue` |

Create skills always apply `status:pending-review` with the type label.

## Background dispatch agents

Automation entrypoints for unattended runs. Humans keep calling `*-project-issue` directly. Each agent handles **one** issue per run — do not drain the queue.

| Agent | Status filter | Delegates to |
|-------|---------------|--------------|
| `issue-workflow-review-agent` | `status:pending-review` | `review-project-issue` |
| `issue-workflow-refine-agent` | `status:pending-refinement` | `refine-project-issue` |
| `issue-workflow-clarify-agent` | `status:pending-clarification` | `clarify-project-issue` |
| `issue-workflow-implement-agent` | `status:pending-implementation` | do the work, then `implement-project-issue` |
| `issue-workflow-verify-agent` | `status:pending-verification` | `verify-project-issue` |
| `issue-workflow-accept-agent` | `status:pending-acceptance` | `accept-project-issue` |

No agent for `status:accepted` (terminal).

**Resolve the target issue**

1. If `#n` is provided, use it (the underlying skill asserts the expected status).
2. Otherwise discover candidates: open issues with a type label (`type:epic`, `type:task`, or `type:defect`) and the agent's status filter.
3. Pick **one** by judgement (not a rigid sort). Prefer unblocked issues; prefer leaf tasks over parent epics when both are eligible; prefer older or more foundational work when ties remain; skip issues that clearly need human-only input you do not have (e.g. PO clarification with no answer in context).
4. Read and run the mapped `*-project-issue` skill for that issue. Do not invent parallel statuses, evidence formats, or transition rules. Independence still applies: do not verify or accept in the same session that posted the implementation summary.
