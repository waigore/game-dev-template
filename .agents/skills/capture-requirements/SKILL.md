---
name: capture-requirements
description: |-
  Capture requirements for one specs/ target at a time via guided questions
  derived from that type's authoring rules and template placeholders, confirm
  answers with the user, then hand off to author-spec. Use when interviewing
  for a vision, definition, design, view, UX, playtest, ADR, or technical
  spec, or when the user asks to capture requirements, gather requirements, or
  fill a spec by asking questions.

  Examples:
    - user: "Capture requirements for the vision" → confirm specs/vision.md, interview, author-spec
    - user: "Interview me for the movement feature" → one feature path, Q&A, then author
    - user: "Help me fill definition by asking questions" → specs/definition/definition.md only
    - user: "Capture requirements for design and view" → ask which one path this session
---

# Capture requirements

Interview for **one** path under `specs/`, then write it via [`author-spec`](../author-spec/SKILL.md). Do not run `review-spec` or audits unless the user asks separately.

## Steps

1. **Resolve and confirm the target** path under `specs/`. If ambiguous or multiple paths are named, ask which **one** file this session. Do not capture more than one target in a run; suggest another session for the next file.
2. **Load capture context only** (same rules resolution as `author-spec`; do not invent parallel rules):
   - Open [`.agents/specs/rules/README.md`](../../specs/rules/README.md), take the most specific matching row, read that file, then every file in its **Also read** chain until none remain.
   - Read the existing target and/or the folder `_template` placeholders.
   - Read minimal upstream only when those rules require grounding for that type (links/IDs). Keep reads narrow.
3. **Interview**. Derive questions from required sections, placeholders, and gaps vs the rules. Prefer few focused rounds over a dump. For already-filled sections, ask only to confirm or revise. Mark unknowns explicitly; do not invent product decisions.
4. **Confirm**. Short bullet summary of what will be written; wait for user OK or corrections.
5. **Author**. Run [`author-spec`](../author-spec/SKILL.md) for that target with the confirmed answers. Stop. Optionally note that `review-spec` is a separate next step; do not run it.

## Rules

- One `specs/` path per invocation.
- Do not paste authoring rules into this skill, into `specs/`, or into a template.
- Do not edit `.agents/specs/rules/` unless the user asked to change the rules.
- Do not fill a `_template` file in place.
- Do not run `review-spec`, `audit-spec-applicability`, or `audit-spec-terminology` unless the user separately asks.
