---
name: issue-workflow-implement-agent
description: |-
  Background dispatch for status:pending-implementation: resolve or discover one
  typed issue, perform the implementation work, then run implement-project-issue
  (deliverables comment + status gate). Product behavior with no formalized spec
  stops for a PoC. Already-formalized work does not. Use when automation
  dispatches an unattended implement agent.

  Examples:
    - dispatch with no issue → discover pending-implementation, pick one, implement
    - dispatch with #12 → implement #12, then implement-project-issue
---

# Issue workflow implement agent

Thin automation entrypoint for `status:pending-implementation`.

**Contract / discovery:** [`docs/issues/workflow-dispatch.md`](../../../docs/issues/workflow-dispatch.md)

**Delegates to:** [`implement-project-issue`](../implement-project-issue/SKILL.md) (after doing the work)

## Steps

1. **Resolve** one target issue per the dispatch contract. Agent-orc `Assigned issue: N` is `#n`; `none` or no number means discover `status:pending-implementation`.
2. **Perform** the implementation work required by that issue (branch, code/specs/assets as scoped, PR as appropriate). A PoC follows [`create-poc`](../create-poc/SKILL.md), including its pull-request ask. Respect native **blocked-by** edges (including a PoC task when one must prove a claim). If the issue asks for product behavior that has no formalized spec, stop and offer [`create-poc`](../create-poc/SKILL.md). Do not require a PoC when the spec for that work is already formalized. Before main-tree UI work, confirm the formalized screen mockup(s) are `approved` in [`specs/ux/mockups/catalog.md`](../../../specs/ux/mockups/catalog.md) ([`docs/ux-mockups.md`](../../../docs/ux-mockups.md)); if not, stop and report — do not implement UI. `implement-project-issue` records evidence only — it does not replace this step.
3. **Read and run** `implement-project-issue` for that issue.
4. **Report** the underlying skill's outcome (URL, evidence, new status). Stop after `implement-project-issue`. Verification is a later `issue-workflow-verify-agent` run.
