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

# Establish asset style

Procedure: [`specs/assets/procedures/establish-style.md`](../../../specs/assets/procedures/establish-style.md) (`APR.establish-style`). Kind Style series: kind specs under [`specs/assets/kinds/`](../../../specs/assets/kinds/). Tools: [`docs/asset-tools.md`](../../../docs/asset-tools.md). Related: [`manage-asset`](../manage-asset/SKILL.md), [`review-asset`](../review-asset/SKILL.md).

## Steps

1. **Gate**. Stop and offer `author-spec` / `capture-requirements` when the kind Style series section or cited aesthetics hold TBD, or the medium's base-tool MCP is unavailable and no person can run the establish step in the web app.
2. **Resolve** the kind spec and its `SS1` series. Confirm **medium** (`visual` | `audio`) and state (`none` | `bootstrapping` | `active` | `stale`).
3. **Bootstrap anchors** if `style_anchors` is empty or the user is replacing them:
   - Generate seeds with `manage-asset` using the **bootstrap** prompt template + `prompt_policy`, or register person-supplied assets with `register-asset`.
   - Require `review-asset` Pass (or person exemption). Confirm with the user which approved asset IDs are anchors. Set state `bootstrapping` until then.
4. **Create binding**:
   - **Visual**: upload anchor files; call Recraft `create_style` with the series model/base type from the kind spec (or confirm with the user if still fill-in). Record `recraft_style_id`.
   - **Audio voice**: lock ElevenLabs `voice_id` + model/settings (design, clone, or library) after anchors Pass. Record `elevenlabs_binding`.
   - **Audio SFX/music**: lock ElevenLabs `{ model, settings }` with confirmed sonic anchors (no fake style UUID). Record `elevenlabs_binding`.
5. **Write the registry** in the kind Style series (`SS1`): medium, `style_anchors`, binding fields, `built_from` (anchor IDs + `YYYY-MM-DD`), aesthetics cites, `prompt_policy` (compose, master, negative citing `PAL` / `SPC.E` / `FRM` / `PAL.K` or `SND.M` / `SND.X` / `SND.V` / `SND.L` as applicable). Set state `active`.
6. **Refresh** when `stale`: recreate binding from current anchors; replace `recraft_style_id` or `elevenlabs_binding`; never keep the old binding silently. Note assets that need `APR.update` via `manage-asset`.
7. **PR** per [`docs/pull-requests.md`](../../../docs/pull-requests.md). Authority cites the kind Style series and aesthetics IDs. Test plan: anchors Pass, binding created, kind registry updated.

## Rules

- Visual establish and later style-constrained generate require Recraft. Audio establish and series-active generate require ElevenLabs. Do not use fal as a substitute binding source.
- Do not invent anchors, prompt_policy clauses, or aesthetics IDs. Missing ones go to specs first.
- Three pillars: enforced binding, master/negative prompting, visual or aural review. Establishing style alone does not approve series members.
- Credentials never enter the repository.
