---
name: analyze-project-feedback
description: |-
  Analyze one type:feedback issue in status:pending-analysis: classify points,
  file or update tasks and defects, and gate the status.
  Use when a feedback issue is ready to analyze, including after clarification.

  Examples:
    - user: "Analyze feedback #12" → classify, file, gate
    - handle-feedback-agent on pending-analysis → this skill
---

# Analyze project feedback

Veneer over the [action shell](../enforce-task-workflow-status/references/action-shell.md) for `status:pending-analysis`. Contract: [`docs/issues/feedback.md`](../../../docs/issues/feedback.md).

Classify and file per the contract. New tasks and defects go through [`create-project-task`](../create-project-task/SKILL.md) and [`create-project-defect`](../create-project-defect/SKILL.md). Gate to `pending-clarification`, `pending-resolution`, or `resolved` per the contract. Do not edit the repo. Do not close the feedback issue. Do not discover another issue.
