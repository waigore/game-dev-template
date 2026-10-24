# Issue workflow status

Applies equally to Epic, Task, and Defect. Source of truth for status labels and transitions. Skills must follow this — do not invent parallel statuses. Background dispatch: [workflow-dispatch.md](workflow-dispatch.md).

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
| `status:accepted` | Accepted; acceptance skills **leave open**. [`project-planner-agent`](../../.agents/skills/project-planner-agent/SKILL.md) may **close** accepted issues (leaves first, then parents when children are closed/catered for). |

Catalog: [`docs/labels.md`](../labels.md).

## Priority

Exactly one `priority:*` label (`critical` / `high` / `normal`). Create applies `priority:normal`. Unlabeled is treated as normal. Selection order when discovering work: [workflow-dispatch.md](workflow-dispatch.md). Humans only set or change priority; agents may only drop lower duplicates (hygiene).

## Transitions and evidence

Evidence is freeform prose; intent must be clear. Post evidence as an issue comment (except refinement, which also edits the body). Then call `enforce-task-workflow-status` to apply the next label.

| From | Action / evidence | To |
|------|-------------------|-----|
| pending-review | Pass review (latest comment); body consistent; deliverables/AC align with parent or project vision; note new requirements | pending-implementation |
| pending-review | Fail review: problems + refinement direction. Cascade another issue only when [Cascade (fail review)](#cascade-fail-review) authorizes it | pending-refinement (self; others only when cascade is authorized) |
| pending-review | Gaps that cannot be inferred from project scope: clarification questions | pending-clarification |
| pending-refinement | Refined issue body + summary comment | pending-review |
| pending-clarification | PO clarification comment | pending-review, or pending-refinement if refine still needed |
| pending-implementation | Comment summarizing deliverables (PRs/commits) | pending-verification |
| pending-verification | Independent pass: checked each deliverable; standards followed; adequate tests | pending-acceptance |
| pending-verification | Fail: detail issues | pending-implementation |
| pending-acceptance | Accept: repo-locatable test evidence per AC; related PRs | accepted (acceptance leaves open; planner may close later) |
| pending-acceptance | Fail: link created defect | pending-implementation |
| pending-acceptance | Cannot test without PO input | pending-clarification |

Reviews are holistic against the whole issue and its parent/sibling relationships, including after prior refinements.

## Cascade (fail review)

A fail moves the reviewed issue to `pending-refinement`. Another issue moves only when a cascade is authorized below. Parent, child, and sibling links alone do not authorize one.

**User order.** An explicit user order (for example “fail #8; also impacts #9”) authorizes each named issue. Move it to `pending-refinement` from any current status. Record the order in the fail comment. Dependence proof is not required.

**Agent cascade.** Authorize only when the fail comment records both:

1. A native blocked-by edge between the failed issue and the other issue.
2. A concrete reason that edge makes the other issue’s implementation or verification impossible to do or to judge while this fail stands.

When both facts are recorded, move the other issue to `pending-refinement` from its current status, including `status:accepted`, if implementation or verification is the step that cannot be done or judged. Leave it in place when its current step is review, refinement, or clarification.

**Not authorized.** For every blocked-by neighbor considered for cascade, and for any issue the user asked about that was not ordered onto the cascade, post a short comment that points at the fail and states why the status stays.

**Planner.** [`project-planner-agent`](../../.agents/skills/project-planner-agent/SKILL.md) removes every cascade this section does not still authorize. The issue that failed review stays in `pending-refinement`. Restore each other issue’s prior `status:*`; when that label cannot be read, use `pending-review`. Comment the reason.

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

Create skills always apply `status:pending-review`, `priority:normal`, and the type label. Dispatch agents: [workflow-dispatch.md](workflow-dispatch.md).
