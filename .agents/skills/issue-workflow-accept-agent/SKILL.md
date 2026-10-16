---
name: issue-workflow-accept-agent
description: |-
  Background dispatch for status:pending-acceptance: resolve or discover one
  typed issue, then run accept-project-issue (acceptance evidence, comments +
  status gate). Use when automation dispatches an unattended accept agent.

  Examples:
    - dispatch with no issue → discover pending-acceptance, pick one, accept
    - dispatch with #12 → accept-project-issue on #12
---

# Issue workflow accept agent

Thin automation entrypoint for `status:pending-acceptance`.

**Contract / discovery:** [`docs/issues/workflow-dispatch.md`](../../../docs/issues/workflow-dispatch.md)

**Delegates to:** [`accept-project-issue`](../accept-project-issue/SKILL.md)

## Steps

1. **Resolve** the target issue per [workflow-dispatch.md](../../../docs/issues/workflow-dispatch.md) (provided `#n`, or discover open typed issues with `status:pending-acceptance` and pick one by judgement).
2. **Read and run** `accept-project-issue` for that issue (and its `references/` as needed). Respect independence: do not accept in the same session that posted the implementation summary.
3. **Report** the underlying skill's outcome (URL, accept/fail/clarify, new status).

## Rules

- Do not restate or contradict `accept-project-issue` or the workflow contract.
- One issue per run; do not batch-process the queue.
- Call no status transitions except through the delegated skill / `enforce-task-workflow-status`.
