# Authoring rules: asset procedures

Read this before editing `specs/assets/procedures.md` or a file split from it. Do not copy these rules into the spec.

Also read [assets.md](assets.md), [tools.md](tools.md), and [catalog.md](catalog.md).

How an agent generates, imports, reviews, updates, and deprecates assets. Steps are agent-facing. Cite tools by role ID. Do not restate catalog fields (`catalog.md`) or recipes (kind specs). Product names only where `docs/asset-tools.md` locks a capability (visual style series uses Recraft; audio style series uses ElevenLabs).

## When to run

State that asset work is tracked by a task issue whose deliverables name asset IDs or kind coverage rules (`AK-<name>.V<n>`), that assets land through PRs, that `manage-asset` runs generate/import/update/deprecate/touch-up, `establish-asset-style` runs `APR.establish-style`, and `register-asset` runs `APR.register`.

## Procedures

One subsection per procedure: `APR.generate`, `APR.import`, `APR.register`, `APR.review`, `APR.update`, `APR.deprecate`, `APR.touch-up`, `APR.establish-style`. Each states trigger, inputs, ordered steps, and outputs.

- **Generate**: pick kind and coverage; if the kind’s style series is `active`, require its registered binding and series prompt template (visual: Recraft `recraft_style_id` / `input_style_id`; audio: ElevenLabs `elevenlabs_binding`); if `none`/`bootstrapping`, only bootstrap seed runs (no full series generate). Compose prompt from recipe template + series `prompt_policy` (master + negative). Add draft entry; run recipe; post-process (audio: mix to `SND.L`, trim, format); checks; record structured generation (and series copy); `APR.review`.
- **Import** / **Register** / **Review** / **Deprecate**: as today’s skeleton (license, supplier, exemption, review-asset, successor).
- **Update**: keep asset ID; raise version; append `history` snapshot before overwriting generation; prefer prior prompt as guide; keep series binding when `active`; checks and review; re-check dependents.
- **Touch-up**: `procedures/touch-up.md`. Respect series negatives; do not clear series binding. Visual: Recraft; audio: ElevenLabs (and recorded mix post-process when needed).
- **Establish-style**: `procedures/establish-style.md`. Bootstrap anchors → create provider binding (Recraft `create_style` or ElevenLabs voice/model lock) → write kind Style series registry → `active`. Refresh when `stale`.

## Consistency

Point **Style anchors** at each kind’s Style series registry (`SS1`). Identity uses three pillars: enforced binding (anchors + Recraft style id or ElevenLabs binding), master/negative `prompt_policy`, and visual or aural review. Sets: variants of one subject in one batch with shared inputs. Re-review when aesthetics, recipe, tool role, or style series changes. Seed may be `n/a` when the tool has no seed.

## Failure handling

The retry limit per recipe, and when the agent stops and asks the user: repeated check failures, a second review Fail on the same asset, an unclear license, or a cost or quota limit reached.

## Splitting

If the file passes 500 words, move each procedure to `procedures/<name>.md`. Leave a summary and links, and update `assets.md`.
