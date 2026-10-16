# Asset Generate

Authoring rules: [`.agents/specs/rules/assets/procedures.md`](../../../.agents/specs/rules/assets/procedures.md).

Part of [`procedures.md`](../procedures.md).

## `APR.generate`

- **Trigger**: a coverage rule needs an asset the catalog lacks.
- **Inputs**: kind spec, coverage rule, recipe with realized tool role, style series (if any), style anchors.

1. If the kind Style series is `active`, require its binding and use the series prompt template (visual: `recraft_style_id` / `input_style_id` via Recraft; audio: `elevenlabs_binding` via ElevenLabs). If `none` or `bootstrapping`, only bootstrap seed runs (bootstrap template); do not full-series generate.
2. Add a draft entry with a new asset ID per [`catalog.md`](../catalog.md).
3. Fill the recipe template from coverage slots; compose with Style series `prompt_policy` (master + negative). Pass the series binding when `active`. Run through the tool role (Recraft when visual series-active; ElevenLabs when audio series-active).
4. Post-process; for audio, normalize loudness to cited `SND.L`, trim silence, set loop points if needed, and export format/sample rate per the kind Specification. Save files per the kind's naming. Run kind checks; retry within the limit in [`procedures.md`](../procedures.md).
5. Record structured `generation` (prompt, negatives, tool, operation, settings, inputs, series copy with `recraft_style_id` or `elevenlabs_binding`, steps including mix post-process). Run `APR.review`.
