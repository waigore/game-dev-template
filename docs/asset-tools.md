# Asset tools

Known tools for the asset pipeline, and the tools this project bans. Specs stay product-neutral: a generation tool realizes a tool role in [`specs/assets/tools.md`](../specs/assets/tools.md) through an Accepted Integration ADR. Touch-up tools listed here need no ADR; agents use them through `APR.touch-up` ([`specs/assets/procedures/touch-up.md`](../specs/assets/procedures/touch-up.md)).

## Banned tools

| Tool | Scope |
|------|-------|
| Pixellab | Never used for anything. Agents do not call it, even when its MCP server is connected. No Integration ADR may name it. `register-asset` refuses assets made or edited with it. CI rejects catalog entries whose generation or touch-up tool names it. |

## Touch-up

A touch-up is an optional edit to an asset's files that brings it closer to its kind spec, the style in [`specs/aesthetics/`](../specs/aesthetics/aesthetics.md), or a quality target. It is never required and never replaces a recipe. Each one is recorded in the asset's catalog entry (`touchups`, `CAT.F19`); the source type stays as it was.

### Recraft

2D cleanup of raster or vector assets, such as background removal, inpainting, outpainting, and upscaling.

- **Options**: before choosing an operation, read Recraft's docs index, [`https://www.recraft.ai/docs/llms.txt`](https://www.recraft.ai/docs/llms.txt), and the pages it links for the operations that fit. Then check the connected MCP server's tool list. Operations, prices, and limits change, so do not rely on a remembered list.
- **Access**: Recraft's hosted MCP server, `https://mcp.recraft.ai/mcp`. It signs in through the browser (OAuth) on first use, so no API key exists anywhere. Usage is billed to the person who signs in. If the server does not expose an operation, a person runs it in Recraft's web app, and the agent records that person as `run_by`.
- **Terms**: before a touch-up, read Recraft's current terms and confirm the signed-in account's rights to output fit the definition's market constraints; record them in `terms`.
- **Fit**: an operation that resamples or repaints pixels can break a pixel grid, a palette lock, or a fixed canvas. Rerun the kind spec's checks after every touch-up.

### Turning Recraft on

The repository ships the server disabled for each agent client. A person enables it locally and signs in on first use:

| Client | Config | Enable |
|--------|--------|--------|
| Cursor | [`.cursor/mcp.json`](../.cursor/mcp.json) | Turn on `recraft` in Cursor's MCP settings |
| OpenCode | [`opencode.json`](../opencode.json) | Set `mcp.recraft.enabled` to `true` locally, without committing it |
| Grok | [`.grok/config.toml`](../.grok/config.toml) | Set `enabled = true` under `[mcp_servers.recraft]` locally, without committing it |
