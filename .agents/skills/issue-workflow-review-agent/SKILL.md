---
name: issue-workflow-review-agent
description: |-
  Background dispatch for status:pending-review: resolve or discover one typed
  issue, then run review-project-issue (comments + status gate). Use when
  automation dispatches an unattended review agent.

  Examples:
    - dispatch with no issue → discover pending-review, pick one, review
    - dispatch with #12 → review-project-issue on #12
---

# Issue workflow review agent

Thin automation entrypoint for `status:pending-review`.

**Contract / discovery:** [`docs/issues/workflow-dispatch.md`](../../../docs/issues/workflow-dispatch.md)

**Delegates to:** [`review-project-issue`](../review-project-issue/SKILL.md)

## Steps

1. **Resolve** the target issue per [workflow-dispatch.md](../../../docs/issues/workflow-dispatch.md) (provided `#n`, or discover open typed issues with `status:pending-review` and pick one by judgement).
2. **Read and run** `review-project-issue` for that issue (and its `references/` as needed).
3. **Report** the underlying skill's outcome (URL, decision, new status).

## Rules

- Do not restate or contradict `review-project-issue` or the workflow contract.
- One issue per run; do not batch-process the queue.
- Call no status transitions except through the delegated skill / `enforce-task-workflow-status`.
