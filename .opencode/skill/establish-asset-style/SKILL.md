---
name: establish-asset-style
description: |-
  Establish or refresh a kind's Style series: bootstrap approved style
  anchors, create a Recraft style from them, write the kind registry
  (recraft_style_id, prompt_policy, state active), and open a PR.
  Visual identity needs enforced styling, master/negative prompting, and
  visual review. Recraft is required (docs/asset-tools.md).
  Use when starting a kind's consistent generation, after anchors change,
  when the series is stale, or the user asks to create/refresh the Recraft
  style for character sprites, tiles, or similar.

  Examples:
    - user: "Set up the character-sprite style series" → APR.establish-style
    - user: "Refresh the tile style after new anchors" → recreate style, update SS1
---

# Establish asset style (facade)

Canonical instructions: [`.agents/skills/establish-asset-style/SKILL.md`](../../../.agents/skills/establish-asset-style/SKILL.md).

Read that file and its `references/` as needed, then run the workflow there. Do not invent a parallel process.
