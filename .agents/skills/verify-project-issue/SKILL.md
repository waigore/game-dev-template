---
name: verify-project-issue
description: |-
  Independently verify an epic/task/defect in status:pending-verification against
  its deliverables; post pass or fail and advance or return status. When linked
  PRs contain code changes, run review-solid-code and treat a Fail as verify Fail.
  Use when checking implemented work (smoke test) before acceptance.

  Examples:
    - user: "Verify #12" → independent checks, pass/fail comment, gate status
    - user: "Verification failed on #12: missing tests" → fail → pending-implementation
---

# Verify project issue

Independent verification (smoke test) for a typed issue in `status:pending-verification`.

**Contract:** [`docs/issues/workflow.md`](../../../docs/issues/workflow.md)

**Status gate:** [`enforce-task-workflow-status`](../enforce-task-workflow-status/SKILL.md)

**SOLID (code PRs):** [`review-solid-code`](../review-solid-code/SKILL.md) · [`docs/solid.md`](../../../docs/solid.md)

## Steps

1. **Refuse** if this session also posted the implementation summary for this issue. Prefer a different comment author than that summary when detectable (`gh api` / comment list).
2. **Load** issue `n`, implementation comment, and linked PRs/commits/paths.
3. **Assert** `status:pending-verification`.
4. **Check** (smoke-level, independent of the implementor’s claim):
   - Deliverables align with what the issue demands
   - Coding/architecture/spec/doc standards closely followed where applicable
   - No major gaps/ambiguities/underspecifications requiring revision
   - If coding: unit test coverage adequate; tests sensibly cover program logic
   - **If any linked PR contains code changes:** run [`review-solid-code`](../review-solid-code/SKILL.md) on those PR diffs. Include its report in the verify comment. A SOLID **Fail** makes verification **Fail**.
   - **If the deliverable is a gameplay demo** (`demos/<slug>/`): check it per [Verification in `docs/demos.md`](../../../docs/demos.md#verification) instead of SOLID and unit-test coverage.
5. **Outcome:**
   - **Pass** — comment summarizing what was checked against each deliverable (include SOLID Pass when run). Gate: `pending-verification` → `pending-acceptance`.
   - **Fail** — detail issues (include SOLID findings when that review failed). Gate: `pending-verification` → `pending-implementation`.
6. **Report** URL, outcome, new status.

## Rules

- Must be independent of the implementor’s comment and session.
- Freeform evidence; intent must be clear.
- Call `enforce-task-workflow-status` for the label change.
- Do not skip `review-solid-code` when linked PRs include implementation files.
