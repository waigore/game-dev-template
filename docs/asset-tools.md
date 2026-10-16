# Asset tools

Known tools for image generation, editing, and touch-up, and the tools this project bans. Specs stay product-neutral: most generation tools realize a tool role in [`specs/assets/tools.md`](../specs/assets/tools.md) through an Accepted Integration ADR. Tools this file marks **ADR-free**, and touch-up options, need no ADR. Touch-ups run through `APR.touch-up` ([`specs/assets/procedures/touch-up.md`](../specs/assets/procedures/touch-up.md)).

## Banned tools

| Tool | Scope |
|------|-------|
| Pixellab | Never used for anything. Agents do not call it, even when its MCP server is connected. No Integration ADR may name it. `register-asset` refuses assets made or edited with it. CI rejects catalog entries whose generation or touch-up tool names it. |

## Preference

| Situation | Prefer |
|-----------|--------|
| Exploratory work, style definition, editing, graphic design, vector art | Recraft |
| Default when Recraft can do the job | Recraft |
| High-throughput batch media generation (expect Recraft touch-up after) | fal.ai |
| Specific model, capability Recraft lacks, or infrastructure-style runs | fal.ai |

## Generation and design

### Recraft

Primary graphic design and 2D generation product for **any** work that needs image generation, editing, or touch-up — **raster and vector**. Create and refine illustration, icons, UI chrome, marketing stills, and similar; also inpaint, outpaint, background removal, upscale, and related edits.

- **ADR**: generation, editing, and touch-up with Recraft need **no** Integration ADR. A tool role may list Recraft as realized ADR-free; catalog `tool_role.adr` is then `adr-free`.
- **Options**: before choosing an operation, read [`https://www.recraft.ai/docs/llms.txt`](https://www.recraft.ai/docs/llms.txt) and the pages it links. Then check the connected MCP tool list. Do not rely on a remembered list.
- **Access**: hosted MCP `https://mcp.recraft.ai/mcp`, OAuth on first use, no API key in-repo. Usage billed to the signer. If MCP lacks an operation, a person runs it in Recraft's web app; record them as `run_by`.
- **Terms**: confirm rights fit the definition's market constraints; record in `terms` / generation license fields.
- **Fit**: resampling or repainting can break pixel grid, palette lock, or fixed canvas. Rerun kind checks after generation or touch-up.

### fal.ai

Raw generative-media infrastructure: search, price, and run many hosted models. High-throughput generation with more rough edges (setup, model choice, weaker style control). Output typically needs Recraft touch-up before it meets kind or style targets. Prefer Recraft for exploratory, style-definition, and editing work.

- **ADR**: recipe tool roles that use fal need an Accepted Integration ADR (unlike Recraft).
- **Access**: MCP per [`mcp.md`](mcp.md); `FAL_AI_KEY` outside the repo.
- **Fit**: treat fal output as a draft pass; finish with Recraft when the kind or style requires it.

## Touch-up

A touch-up is an optional edit to an asset's files that brings it closer to its kind spec, aesthetics, or a quality target. It never replaces a recipe. Record in `touchups` (`CAT.F19`); source type stays as it was. Recraft (above) is the touch-up option; same access, terms, and fit rules.

## Enabling MCP servers

`recraft` and `fal` ship disabled. Enable locally per [`mcp.md`](mcp.md); use `setup-project-mcp`. Do not commit enabled state.
