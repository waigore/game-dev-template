---
name: capture-requirements
description: |-
  Capture requirements via guided questions derived from each spec's authoring
  rules and template placeholders, confirm answers with the user, then hand off
  to author-spec. A long first prompt does not lock specs: offer a PoC and save
  downstream detail as notes. Downstream specs wait until a slice is being
  formalized and its blocking high-level fields are set.
  Use when interviewing for any spec, or when the user asks to capture
  requirements, gather requirements, or fill a spec by asking questions.

  Examples:
    - user: "Help me capture requirements" → offer a PoC; do not interview the tree
    - user: long prompt with pitch, platforms, and combat rules → save notes, offer a PoC, lock nothing
    - user: "Help me fill definition by asking questions" → specs/definition/definition.md only
    - user: "Formalize the movement PoC" → blocking fields if unset, then the keep-list specs
    - user: "Capture requirements for design and view" → ask which one path this session, and only while formalizing
    - unclear rendering approach during technical capture → propose PoC; log purpose/scope/outcome; offer task when agent-orc or a wave will own it
---

# Capture requirements (facade)

Canonical instructions: [`.agents/skills/capture-requirements/SKILL.md`](../../../.agents/skills/capture-requirements/SKILL.md).

Read that file and its `references/` as needed, then run the workflow there. Do not invent a parallel process.
