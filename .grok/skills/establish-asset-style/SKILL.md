---
name: establish-asset-style
description: |-
  Establish or refresh a kind's Style series: bootstrap approved style
  anchors, create the medium's provider binding (Recraft style id or
  ElevenLabs voice/model binding), write the kind registry (binding,
  prompt_policy, state active), and open a PR. Identity needs enforced
  binding, master/negative prompting, and visual or aural review.
  Recraft is required for visual kinds; ElevenLabs for audio
  (docs/asset-tools.md).
  Use when starting a kind's consistent generation, after anchors change,
  when the series is stale, or the user asks to create/refresh style for
  sprites, tiles, SFX, music, voice, or similar.

  Examples:
    - user: "Set up the character-sprite style series" → APR.establish-style (Recraft)
    - user: "Lock the hero voice series" → APR.establish-style (ElevenLabs voice_id)
    - user: "Refresh the tile style after new anchors" → recreate binding, update SS1
---

# Establish asset style (facade)

Canonical instructions: [`.agents/skills/establish-asset-style/SKILL.md`](../../../.agents/skills/establish-asset-style/SKILL.md).

Read that file and its `references/` as needed, then run the workflow there. Do not invent a parallel process.
