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

# Handle feedback agent

Veneer for unattended feedback. Discovery: [`docs/issues/workflow-dispatch.md`](../../../docs/issues/workflow-dispatch.md). The orchestrator gate is any open `type:feedback` issue that is not `status:resolved`.

Resolve one issue. `pending-analysis` → [`analyze-project-feedback`](../analyze-project-feedback/SKILL.md). `pending-resolution` → [`resolve-project-feedback`](../resolve-project-feedback/SKILL.md). If neither status is open, stop. Report that skill's outcome. Do not restate filing, analysis, or transitions.
