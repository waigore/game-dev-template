# ElevenLabs (asset tool)

Part of [`asset-tools.md`](asset-tools.md).

Primary audio generation product for voice (TTS, voice design, clone), sound effects, and music. Also audio edits the MCP or web app exposes that bring a file closer to its kind spec (regen with locked binding, trim-oriented re-runs). Loudness normalize, silence trim, and format export that the MCP lacks may run as post-process steps recorded in `generation.steps` / `touchups`.

- **ADR**: generation, editing, touch-up, and audio style series need **no** Integration ADR. Catalog `tool_role.adr` is `adr-free` when ElevenLabs realizes the role.
- **Style series**: `APR.establish-style` for audio kinds locks `elevenlabs_binding` in the kind registry (voice: `voice_id` + model/settings; SFX/music: model + settings plus sonic anchors). Series-active `APR.generate` / `APR.update` must use that binding. Do not invent a parallel style. fal must not replace ElevenLabs for these steps.
- **Options**: before choosing an operation, read ElevenLabs docs ([`https://elevenlabs.io/docs/llms.txt`](https://elevenlabs.io/docs/llms.txt) when present, else the public API/docs hub) and the connected MCP tool list.
- **Access**: hosted MCP `https://api.elevenlabs.io/v1/mcp`, OAuth on first use, no API key in-repo. Usage billed to the signer. If MCP lacks an operation, a person runs it in the web app; record them as `run_by`.
- **Terms**: confirm rights fit the definition's market constraints; record in `terms` / generation license fields.
- **Fit**: voice drift, wrong duration, or off-target loudness fails kind checks and `SND.L`. Rerun checks after generation or touch-up. If there is no native negative channel, append avoid-clauses from `prompt_policy` into the prompt; still record `negative_prompt` source clauses in the catalog.
