# Establish Style Series

Authoring rules: [`.agents/specs/rules/assets/procedures.md`](../../../.agents/specs/rules/assets/procedures.md).

Part of [`procedures.md`](../procedures.md). Skill: `establish-asset-style`.

## `APR.establish-style`

- **Trigger**: a kind’s Style series is `none`, `bootstrapping`, or `stale`, and the project needs an `active` series for consistent generation.
- **Inputs**: the kind spec (Style series + recipes), cited aesthetics / `REF`s / `SND` rows, approved or seed assets, the medium’s base tool per [`docs/asset-tools.md`](../../../docs/asset-tools.md) (Recraft visual; ElevenLabs audio).
- **Pillars**: enforced binding, master/negative `prompt_policy`, visual or aural review — all three required for identity.

1. Gate: Style series and cited aesthetics hold no undecided placeholders. Set state `bootstrapping` if `none`. Confirm **medium** (`visual` | `audio`).
2. If `style_anchors` is empty: bootstrap seed assets via `APR.generate` (bootstrap prompt template + `prompt_policy`) or `APR.register` / human supply; run checks and `APR.review`. Stop until Pass and the user confirms which approved IDs are anchors.
3. Confirm the base tool’s terms fit the definition.
   - **Visual**: upload anchor files; run Recraft `create_style` with the series model/base type; record `recraft_style_id`.
   - **Audio voice**: lock an ElevenLabs voice (`voice_id` + model/settings) from design/clone/library after anchors Pass; record `elevenlabs_binding`.
   - **Audio SFX/music**: lock ElevenLabs `{ model, settings }` with the confirmed sonic anchors (no fake style UUID); record `elevenlabs_binding`.
4. Write the kind Style series registry: medium, `style_anchors`, binding fields, `built_from` (anchor IDs + date), `aesthetics` cites, `prompt_policy` if still a fill-in. Set state `active`.
5. On refresh (`stale`): recreate binding from current anchors; replace `recraft_style_id` or `elevenlabs_binding`; do not keep the old binding silently. Re-review assets that cited the old binding via `APR.update` as needed.

**Outputs**: updated kind Style series section; optional new catalog entries for seeds.
