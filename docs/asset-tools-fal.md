# fal.ai (asset tool)

Part of [`asset-tools.md`](asset-tools.md).

Raw generative-media infrastructure: search, price, and run many hosted models. High-throughput generation with more rough edges. Visual output typically needs Recraft touch-up; audio output typically needs ElevenLabs finish when the kind or style requires it. Prefer the medium's base tool (Recraft or ElevenLabs) for exploratory, style-definition, and editing work. **Not** for style-series establish or for generate/update when the kind Style series is `active`.

- **ADR**: recipe tool roles that use fal need an Accepted Integration ADR (unlike Recraft or ElevenLabs).
- **Access**: MCP per [`mcp.md`](mcp.md); `FAL_AI_KEY` outside the repo.
- **Fit**: treat fal output as a draft pass; finish with Recraft (visual) or ElevenLabs (audio) when the kind or style requires it.
