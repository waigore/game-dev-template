---
name: resolve-project-feedback
description: |-
  Move one type:feedback issue from pending-resolution to resolved when every
  related issue is accepted or closed.
  Use when checking whether feedback work is done.

  Examples:
    - user: "Resolve feedback #12 if its tasks are done" → gate or stay
    - handle-feedback-agent on pending-resolution → this skill
---

# Resolve project feedback

Veneer over the [action shell](../enforce-task-workflow-status/references/action-shell.md) for `status:pending-resolution`. Contract: [`docs/issues/feedback.md`](../../../docs/issues/feedback.md).

When every related issue is `status:accepted` or closed, gate to `resolved`. Otherwise leave the status (the shell's stay-put). Do not re-analyze. Do not edit the repo. Do not close the feedback issue. Do not discover another issue.
