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

# Establish asset style

Procedure: [`specs/assets/procedures/establish-style.md`](../../../specs/assets/procedures/establish-style.md) (`APR.establish-style`). Kind Style series: kind specs under [`specs/assets/kinds/`](../../../specs/assets/kinds/). Tools: [`docs/asset-tools.md`](../../../docs/asset-tools.md). Related: [`manage-asset`](../manage-asset/SKILL.md), [`review-asset`](../review-asset/SKILL.md).

## Steps

1. **Gate**. Stop and offer `author-spec` / `capture-requirements` when the kind Style series section or cited aesthetics hold TBD, or Recraft MCP is unavailable and no person can run `create_style` in the web app.
2. **Resolve** the kind spec and its `SS1` series. Confirm state (`none` | `bootstrapping` | `active` | `stale`).
3. **Bootstrap anchors** if `style_anchors` is empty or the user is replacing them:
   - Generate seeds with `manage-asset` using the **bootstrap** prompt template + `prompt_policy`, or register person-supplied assets with `register-asset`.
   - Require `review-asset` Pass (or person exemption). Confirm with the user which approved asset IDs are anchors. Set state `bootstrapping` until then.
4. **Create style** (Recraft only): upload anchor files; call `create_style` with the series model/base type from the kind spec (or confirm with the user if still fill-in). Record the returned style id.
5. **Write the registry** in the kind Style series (`SS1`): `style_anchors`, `recraft_style_id`, model/base, `built_from` (anchor IDs + `YYYY-MM-DD`), aesthetics cites, `prompt_policy` (compose, master, negative citing `PAL` / `SPC.E` / `FRM` / `PAL.K` as applicable). Set state `active`.
6. **Refresh** when `stale`: recreate style from current anchors; replace `recraft_style_id`; never keep the old id silently. Note assets that need `APR.update` via `manage-asset`.
7. **PR** per [`docs/pull-requests.md`](../../../docs/pull-requests.md). Authority cites the kind Style series and aesthetics IDs. Test plan: anchors Pass, Recraft style created, kind registry updated.

## Rules

- Recraft is required for establish and for later style-constrained generate. Do not use fal for `create_style` or as a substitute `input_style_id` source.
- Do not invent anchors, prompt_policy clauses, or aesthetics IDs. Missing ones go to specs first.
- Three pillars: enforced styling, master/negative prompting, visual review. Establishing style alone does not approve series members.
- Credentials never enter the repository.
