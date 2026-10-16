# Establish Style Series

Authoring rules: [`.agents/specs/rules/assets/procedures.md`](../../../.agents/specs/rules/assets/procedures.md).

Part of [`procedures.md`](../procedures.md). Skill: `establish-asset-style`.

## `APR.establish-style`

- **Trigger**: a kind’s Style series is `none`, `bootstrapping`, or `stale`, and the project needs an `active` series for consistent generation.
- **Inputs**: the kind spec (Style series + recipes), cited aesthetics / `REF`s, approved or seed assets, Recraft per [`docs/asset-tools.md`](../../../docs/asset-tools.md).
- **Pillars**: enforced styling, master/negative `prompt_policy`, visual review — all three required for identity.

1. Gate: Style series and cited aesthetics hold no undecided placeholders. Set state `bootstrapping` if `none`.
2. If `style_anchors` is empty: bootstrap seed assets via `APR.generate` (bootstrap prompt template + `prompt_policy`) or `APR.register` / human supply; run checks and `APR.review`. Stop until Pass and the user confirms which approved IDs are anchors.
3. Confirm Recraft terms fit the definition. Upload anchor files; run Recraft `create_style` with the series model/base type.
4. Write the kind Style series registry: `style_anchors`, `recraft_style_id`, model/base type, `built_from` (anchor IDs + date), `aesthetics` cites, `prompt_policy` if still a fill-in. Set state `active`.
5. On refresh (`stale`): recreate style from current anchors; replace `recraft_style_id`; do not keep the old id silently. Re-review assets that cited the old id via `APR.update` as needed.

**Outputs**: updated kind Style series section; optional new catalog entries for seeds.
