---
name: issue-workflow-implement-agent
description: |-
  Background dispatch for status:pending-implementation: resolve or discover one
  typed issue, perform the implementation work, then run implement-project-issue
  (deliverables comment + status gate). Use when automation dispatches an
  unattended implement agent.

  Examples:
    - dispatch with no issue → discover pending-implementation, pick one, implement
    - dispatch with #12 → implement #12, then implement-project-issue
---

# Issue workflow implement agent

Thin automation entrypoint for `status:pending-implementation`.

**Contract / discovery:** [`docs/issues/workflow-dispatch.md`](../../../docs/issues/workflow-dispatch.md)

**Delegates to:** [`implement-project-issue`](../implement-project-issue/SKILL.md) (after doing the work)

## Steps

1. **Resolve** the target issue per [workflow-dispatch.md](../../../docs/issues/workflow-dispatch.md) (provided `#n`, or discover open typed issues with `status:pending-implementation` and pick one by judgement).
2. **Perform** the implementation work required by that issue (branch, code/specs/assets as scoped, PR as appropriate). `implement-project-issue` records evidence only — it does not replace this step.
3. **Read and run** `implement-project-issue` for that issue (and its `references/` as needed).
4. **Report** the underlying skill's outcome (URL, evidence, new status). Do not run verify or accept in this session.

## Rules

- Do not restate or contradict `implement-project-issue` or the workflow contract.
- One issue per run; do not batch-process the queue.
- Call no status transitions except through the delegated skill / `enforce-task-workflow-status`.
