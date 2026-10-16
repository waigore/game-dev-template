---
name: issue-workflow-refine-agent
description: |-
  Background dispatch for status:pending-refinement: resolve or discover one
  typed issue, then run refine-project-issue (body edit, summary comment, status
  gate). Use when automation dispatches an unattended refine agent.

  Examples:
    - dispatch with no issue → discover pending-refinement, pick one, refine
    - dispatch with #8 → refine-project-issue on #8
---

# Issue workflow refine agent

Thin automation entrypoint for `status:pending-refinement`.

**Contract / discovery:** [`docs/issues/workflow-dispatch.md`](../../../docs/issues/workflow-dispatch.md)

**Delegates to:** [`refine-project-issue`](../refine-project-issue/SKILL.md)

## Steps

1. **Resolve** the target issue per [workflow-dispatch.md](../../../docs/issues/workflow-dispatch.md) (provided `#n`, or discover open typed issues with `status:pending-refinement` and pick one by judgement).
2. **Read and run** `refine-project-issue` for that issue (and its `references/` as needed).
3. **Report** the underlying skill's outcome (URL, summary, new status).

## Rules

- Do not restate or contradict `refine-project-issue` or the workflow contract.
- One issue per run; do not batch-process the queue.
- Call no status transitions except through the delegated skill / `enforce-task-workflow-status`.
