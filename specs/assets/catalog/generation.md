# Generation Record Shape

Authoring rules: [`.agents/specs/rules/assets/catalog.md`](../../../.agents/specs/rules/assets/catalog.md).

Part of [`fields.md`](fields.md) (`CAT.F11`).

Agent-generated `generation` object parts:

| Part | Meaning |
|------|---------|
| `prompt` | Prompt as run (after composing recipe template + `prompt_policy`) |
| `negative_prompt` | Source negative clauses when composed |
| `tool` | Product name (e.g. Recraft, ElevenLabs) |
| `operation` | MCP operation name |
| `settings` | At least `model` and size/aspect when used; `input_style_id` when visual series-active; `voice_id` / model settings when audio series-active |
| `seed` | Value, or `n/a — tool has no seed` |
| `inputs` | `style_anchors`, `refs`, `base_assets` |
| `series` | `{ id, recraft_style_id }` or `{ id, elevenlabs_binding }` copy from the kind registry when used |
| `steps` | Ordered tool calls for this version, including audio mix post-process when used |

Person-supplied generated assets: record the tool and whatever of these the person can supply.
