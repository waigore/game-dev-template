---
name: review-solid-code
description: |-
  Review code against docs/solid.md (SOLID + structure continuity): Pass/Fail with
  findings tagged by principle and severity. Read-only.
  Use on demand for working-tree or PR diffs, or when verify-project-issue finds
  code changes in linked PRs.

  Examples:
    - user: "Review SOLID on my uncommitted changes" → working-tree diff
    - user: "review-solid-code on PR #40" → PR code diff
    - verify-project-issue: linked PR has code → run this review; Fail blocks verify
---

# Review SOLID code

Read-only review of code changes against [`docs/solid.md`](../../../docs/solid.md).

## Resolve the target

Use the first match:

1. **Named PR** — user or caller gives a PR number/URL → that PR’s code diff.
2. **Verify caller** — linked deliverable PRs that contain **code changes** → those PR diffs.
3. **Default** — uncommitted / working-tree changes (`git status`, staged + unstaged diff).

**Code changes:** any touched implementation file (source, tests, build that shapes runtime). Skip this skill when the diff is only docs, specs, agent skills/rules, or similar non-implementation paths.

If there is nothing to review, report **N/A** (not a Pass) and stop.

## Review

For the resolved diff (and nearby existing structure needed for continuity):

1. Check **SRP**, **OCP**, **LSP**, **ISP**, **DIP** per [`docs/solid.md`](../../../docs/solid.md).
2. Check **structure continuity** (`CONT`): new code matches existing layout, naming, layering, and patterns unless SOLID requires otherwise. If continuity and SOLID conflict, SOLID wins — do not file a CONT must-fix for a SOLID-required change.
3. Tag each finding: principle (`SRP` | `OCP` | `LSP` | `ISP` | `DIP` | `CONT`) and severity (`must-fix` | `suggestion`).
4. Cite path (and line range when clear). Keep findings concrete; no speculative rewrites.

## Verdict

- **Fail** — any `must-fix` finding.
- **Pass** — no `must-fix` findings (suggestions allowed).

## Report shape

```markdown
## SOLID review: Pass | Fail | N/A

**Target:** working tree | PR #<n> | …

### Findings
- `[PRINCIPLE]` `must-fix` | `suggestion` — path: summary

### Notes
(optional: continuity context, skipped non-code paths)
```

When called from chat, reply with the report. When called from `verify-project-issue`, return the report to the caller for inclusion in the verify comment.

## Rules

- Read-only: do not edit code while reviewing.
- Do not invent principles beyond `docs/solid.md`.
- Complements other coding standards; do not restate them here.
- A Fail from this skill fails verification when invoked by `verify-project-issue`.
