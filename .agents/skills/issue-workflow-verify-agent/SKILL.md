---
name: issue-workflow-verify-agent
description: |-
  Background dispatch for status:pending-verification: resolve or discover one
  typed issue, then run verify-project-issue (independent check, comments + status
  gate). Use when automation dispatches an unattended verify agent.

  Examples:
    - dispatch with no issue → discover pending-verification, pick one, verify
    - dispatch with #12 → verify-project-issue on #12
---

# Issue workflow verify agent

Thin automation entrypoint for `status:pending-verification`.

**Contract / discovery:** [`docs/issues/workflow.md`](../../../docs/issues/workflow.md) (Background dispatch agents)

**Delegates to:** [`verify-project-issue`](../verify-project-issue/SKILL.md)

## Steps

1. **Resolve** the target issue per the Background dispatch agents section (provided `#n`, or discover open typed issues with `status:pending-verification` and pick one by judgement).
2. **Read and run** `verify-project-issue` for that issue (and its `references/` as needed). Respect independence: do not verify in the same session that posted the implementation summary.
3. **Report** the underlying skill's outcome (URL, pass/fail, new status).

## Rules

- Do not restate or contradict `verify-project-issue` or the workflow contract.
- One issue per run; do not batch-process the queue.
- Call no status transitions except through the delegated skill / `enforce-task-workflow-status`.
