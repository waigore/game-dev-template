---
name: handle-feedback-agent
description: |-
  Background dispatch for open type:feedback that is not resolved: one issue,
  then analyze-project-feedback or resolve-project-feedback.
  Use when automation dispatches handle-feedback-agent.

  Examples:
    - Assigned issue: 12 in pending-analysis → analyze-project-feedback
    - Assigned issue: none → one pending-analysis issue, else pending-resolution
---

# Handle feedback agent (facade)

Canonical instructions: [`.agents/skills/handle-feedback-agent/SKILL.md`](../../../.agents/skills/handle-feedback-agent/SKILL.md).

Read that file and its `references/` as needed, then run the workflow there. Do not invent a parallel process.
