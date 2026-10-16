# Asset tools

Known tools for image and audio generation, editing, and touch-up, and the tools this project bans. Specs stay product-neutral: most generation tools realize a tool role in [`specs/assets/tools.md`](../specs/assets/tools.md) through an Accepted Integration ADR. Tools this file marks **ADR-free**, and touch-up options, need no ADR. Touch-ups run through `APR.touch-up` ([`specs/assets/procedures/touch-up.md`](../specs/assets/procedures/touch-up.md)). Visual style series establish and style-constrained generate **require Recraft**. Audio style series establish and series-active generate **require ElevenLabs**.

## Banned tools

| Tool | Scope |
|------|-------|
| Pixellab | Never used for anything. Agents do not call it, even when its MCP server is connected. No Integration ADR may name it. `register-asset` refuses assets made or edited with it. CI rejects catalog entries whose generation or touch-up tool names it. |

## Preference

| Situation | Prefer |
|-----------|--------|
| Visual style series establish (`create_style`) or style-constrained generate (`input_style_id`) | Recraft (required) |
| Audio style series establish or series-active generate (voice, SFX, music) | ElevenLabs (required) |
| Exploratory visual work, style definition, editing, graphic design, vector art | Recraft |
| Exploratory audio work, voice design, SFX/music when the kind series is not `active` | ElevenLabs |
| Default when Recraft can do a visual job | Recraft |
| Default when ElevenLabs can do an audio job | ElevenLabs |
| High-throughput batch media (expect base-tool touch-up after); kind series not `active` | fal.ai |
| Specific model, capability the medium's base tool lacks, or infrastructure-style runs; kind series not `active` | fal.ai |

## Generation and design

- **Recraft**: [`asset-tools-recraft.md`](asset-tools-recraft.md) (ADR-free; required for visual style series).
- **ElevenLabs**: [`asset-tools-elevenlabs.md`](asset-tools-elevenlabs.md) (ADR-free; required for audio style series).
- **fal.ai**: [`asset-tools-fal.md`](asset-tools-fal.md) (needs Integration ADR; not for active style series of either medium).

## Touch-up

A touch-up is an optional edit to an asset's files that brings it closer to its kind spec, aesthetics, or a quality target. It never replaces a recipe. Record in `touchups` (`CAT.F19`); source type and series binding stay. Visual touch-up: Recraft ([`asset-tools-recraft.md`](asset-tools-recraft.md)). Audio touch-up: ElevenLabs ([`asset-tools-elevenlabs.md`](asset-tools-elevenlabs.md)), including regen with locked binding; loudness/trim/format steps may be recorded post-process when the MCP lacks them.

## Enabling MCP servers

`recraft`, `elevenlabs`, and `fal` ship disabled. Enable locally per [`mcp.md`](mcp.md); use `setup-project-mcp`. Do not commit enabled state.
