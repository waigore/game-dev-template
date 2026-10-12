---
name: review-spec
description: |-
  Review a spec document (or the whole spec set) under specs/ against its review
  instructions in .agents/specs/, then report the verdict back to the requester
  (chat, GitHub issue, PR, or calling agent).
  Use when the user asks to review, check, or validate a spec such as the vision,
  definition, or design docs.

  Examples:
    - user: "Review specs/vision.md" → run vision review, reply in chat
    - user: "Review the whole spec" → review every indexed spec, upstream first
    - issue #14: "Review the design spec" → run design review, comment on #14
---

# Review spec

Review one spec document or the whole spec set and report the result to whoever asked.

**Spec index and review instructions:** [`specs/README.md`](../../../specs/README.md), whose "Review instructions" column links each spec to its checklist in [`.agents/specs/`](../../specs/).

## Steps

1. **Resolve the target**:
   - **Specific doc**: find its row in the spec index. A file inside a spec's folder (e.g. `specs/design/flows/run.md`) uses that spec's review instructions, scoped to the file.
   - **Whole spec**: every spec in the index, reviewed upstream first (in index order).
   - If a target has no review instructions, do not invent criteria; report it as not reviewable.
2. **Review**: follow the linked review instructions exactly, including their upstream reading and report shape.
3. **Summarize**: for a whole-spec review, open with an overall verdict (Fail if any spec fails), then each spec's report. Note when a downstream finding may stem from an upstream failure.
4. **Report back to the source of the request**:
   - **Chat**: reply with the report.
   - **GitHub issue or PR**: post the report as a comment on it (`gh issue comment` / `gh pr comment`); if the request also came through chat, reply there with the outcome and comment link.
   - **Another skill or agent**: return the report to the caller.

## Rules

- Read-only: do not edit specs while reviewing. Fixes happen in a separate step.
- Do not change issue labels or status; callers that run the issue workflow gate status themselves via [`enforce-task-workflow-status`](../enforce-task-workflow-status/SKILL.md).
- Use the report shape defined by the review instructions; do not restate their checklists here or in the report.
