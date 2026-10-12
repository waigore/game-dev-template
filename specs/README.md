# `specs/`

Product and technical specifications. Specs define what to build; [`docs/`](../docs/) holds process and project documentation.

Agents load relevant specs before implementing. If it is not in `specs/`, it must not be in the code.

## Concise specs

Every file under `specs/` must stay under **500 words**. If content would exceed that, split into multiple focused files and link between them.

## Index

Add a row here for each spec file as it is created.

| Spec | Covers | Review instructions |
|------|--------|---------------------|
| [`vision.md`](vision.md) | Elevator pitch, high-level description, audience, essential qualities (≤5), tradeoffs, non-goals | [`.agents/specs/vision-review.md`](../.agents/specs/vision-review.md) |
| [`definition/definition.md`](definition/definition.md) | Scope, player and product objectives, supported platforms, design/technical/market constraints, quality expectations | [`.agents/specs/definition-review.md`](../.agents/specs/definition-review.md) |
| [`design/design.md`](design/design.md) | Game design hub: rules, genre/platform profile, and index of all design specs (glossary, traceability to vision and definition, characters, entities, loops, features, flows, stages, scenarios, sub-games, game state, configuration, difficulty, progression, win/loss, world, experience). Unit specs are indexed in the hub. | [`.agents/specs/design-review.md`](../.agents/specs/design-review.md) |
