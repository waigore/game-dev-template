# Asset tools

Known tools for image generation, editing, and touch-up, and the tools this project bans. Specs stay product-neutral: most generation tools realize a tool role in [`specs/assets/tools.md`](../specs/assets/tools.md) through an Accepted Integration ADR. Tools this file marks **ADR-free**, and touch-up options, need no ADR. Touch-ups run through `APR.touch-up` ([`specs/assets/procedures/touch-up.md`](../specs/assets/procedures/touch-up.md)). Style series establish and style-constrained generate **require Recraft**.

## Banned tools

| Tool | Scope |
|------|-------|
| Pixellab | Never used for anything. Agents do not call it, even when its MCP server is connected. No Integration ADR may name it. `register-asset` refuses assets made or edited with it. CI rejects catalog entries whose generation or touch-up tool names it. |

## Preference

| Situation | Prefer |
|-----------|--------|
| Style series establish (`create_style`) or style-constrained generate (`input_style_id`) | Recraft (required) |
| Exploratory work, style definition, editing, graphic design, vector art | Recraft |
| Default when Recraft can do the job | Recraft |
| High-throughput batch media generation (expect Recraft touch-up after); kind series not `active` | fal.ai |
| Specific model, capability Recraft lacks, or infrastructure-style runs; kind series not `active` | fal.ai |

## Generation and design

- **Recraft**: [`asset-tools-recraft.md`](asset-tools-recraft.md) (ADR-free; required for style series).
- **fal.ai**: [`asset-tools-fal.md`](asset-tools-fal.md) (needs Integration ADR; not for active style series).

## Touch-up

A touch-up is an optional edit to an asset's files that brings it closer to its kind spec, aesthetics, or a quality target. It never replaces a recipe. Record in `touchups` (`CAT.F19`); source type and series binding stay. Recraft is the touch-up option; same access, terms, and fit rules as in [`asset-tools-recraft.md`](asset-tools-recraft.md).

## Enabling MCP servers

`recraft` and `fal` ship disabled. Enable locally per [`mcp.md`](mcp.md); use `setup-project-mcp`. Do not commit enabled state.
