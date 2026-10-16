---
name: issue-workflow-clarify-agent
description: |-
  Background dispatch for status:pending-clarification: resolve or discover one
  typed issue, then run clarify-project-issue when PO answers are available.
  Use when automation dispatches an unattended clarify agent.

  Examples:
    - dispatch with PO answer for #5 → clarify-project-issue on #5
    - dispatch with no PO answer → stop and report; do not invent clarification
---

# Issue workflow clarify agent

Thin automation entrypoint for `status:pending-clarification`.

**Contract / discovery:** [`docs/issues/workflow.md`](../../../docs/issues/workflow.md) (Background dispatch agents)

**Delegates to:** [`clarify-project-issue`](../clarify-project-issue/SKILL.md)

## Steps

1. **Resolve** the target issue per the Background dispatch agents section (provided `#n`, or discover open typed issues with `status:pending-clarification` and pick one by judgement). Skip candidates that need PO input you do not have.
2. If no PO clarification is available in the dispatch context, **stop and report** — do not invent answers.
3. Otherwise **read and run** `clarify-project-issue` for that issue (and its `references/` as needed).
4. **Report** the underlying skill's outcome (URL, new status), or that clarification was unavailable.

## Rules

- Do not restate or contradict `clarify-project-issue` or the workflow contract.
- One issue per run; do not batch-process the queue.
- Call no status transitions except through the delegated skill / `enforce-task-workflow-status`.
