# `specs/`

Product and technical specifications. Specs define what to build; [`docs/`](../docs/) holds process and project documentation.

Agents load relevant specs before implementing. If it is not in `specs/`, it must not be in the code. Agents do not read [`adr/archive/`](adr/archive/README.md) unless explicitly asked.

## Concise specs

Every Markdown file under `specs/` must stay under **500 words**. If content would exceed that, split into multiple focused files and link between them. HTML files under [`ux/mockups/`](ux/mockups/), [`view/diagrams/`](view/diagrams/), and [`technical/diagrams/`](technical/diagrams/) are visual artifacts and are exempt from the word limit.

## Authoring

Writing rules live in [`.agents/specs/rules/`](../.agents/specs/rules/README.md), one file per document type. Read the matching file before editing a spec. Do not copy those rules into the spec. Each spec links its rules file. Use the `author-spec` skill. Review checklists align with those rules as described in [`.agents/specs/alignment.md`](../.agents/specs/alignment.md).

## Index

Add a row here for each spec file as it is created.

| Spec | Covers | Review instructions |
|------|--------|---------------------|
| [`vision.md`](vision.md) | Elevator pitch, high-level description, audience, essential qualities (≤5), tradeoffs, non-goals | [`.agents/specs/vision-review.md`](../.agents/specs/vision-review.md) |
| [`definition/definition.md`](definition/definition.md) | Scope, player and product objectives, supported platforms, design/technical/market constraints, spec depth (prototype, small, or full), and a link to quality expectations | [`.agents/specs/definition-review.md`](../.agents/specs/definition-review.md) |
| [`definition/quality.md`](definition/quality.md) | Non-functional requirements: performance, load time/latency, reliability, observability, save durability, accessibility, localization. Each Applies (target, platforms, how checked) or is N/A with a reason | [`.agents/specs/definition-review.md`](../.agents/specs/definition-review.md) |
| [`design/design.md`](design/design.md) | Game design hub: rules, genre/platform profile, and index of all design specs (glossary, traceability to vision and definition, characters, entities, loops, features, flows, stages, scenarios, sub-games, game state, configuration, difficulty, progression, win/loss, world, experience), stable element IDs, and Given/When/Then player stories proving each element. Unit specs and story files are indexed in the hub. | [`.agents/specs/design-review.md`](../.agents/specs/design-review.md) |
| [`view/view.md`](view/view.md) | View hub: how the player is placed in the world and how it is seen, heard, and felt (dimensionality, embodiment, spatial model and positioning, projection, cameras and camera controls, physics feel, readability and comfort, spatial audio, haptics), stable element IDs, Given/When/Then view stories, traceability to vision, definition, quality, and game design, and to-scale HTML diagrams of the projection and each camera. Unit specs and story files are indexed in the hub. | [`.agents/specs/view-review.md`](../.agents/specs/view-review.md) |
| [`ux/ux.md`](ux/ux.md) | UX hub: how people operate the interface (actors, screens, navigation, journeys, exception states, input bindings), stable element IDs, Given/When/Then user stories, traceability to vision, definition, and game design, and HTML mockups (one per screen, one click-through per journey) produced with the Open Design skill. Unit specs and story files are indexed in the hub. | [`.agents/specs/ux-review.md`](../.agents/specs/ux-review.md) |
| [`playtest/playtest.md`](playtest/playtest.md) | Playtest hub: AI-agent playtesting against design stories and UX journeys (not view stories); glossary, IDs, traceability, coverage, tools, procedures, evidence; design/UX protocol templates; acceptance gate; constraints on ADRs and technical design. Unit specs and protocols are indexed in the hub. | [`.agents/specs/playtest-review.md`](../.agents/specs/playtest-review.md) |
| [`adr/adr.md`](adr/adr.md) | Architecture decision records (ADRs) for engine, frameworks, libraries, storage, integrations, and game architecture: stack summary and index. Each ADR states context, purpose, decision, reasoning, rejected alternatives, non-functional requirements, constraints imposed on upstream specs, and validation. Superseded ADRs move to `adr/archive/`. | [`.agents/specs/adr-review.md`](../.agents/specs/adr-review.md) |
| [`technical/technical.md`](technical/technical.md) | Technical design hub: layers, modules, components, contracts, schemata/lifecycles, sequences, stable element IDs, traceability to definition/design/view/UX and Accepted ADRs, diagrams; optional failures, concurrency, persistence, configuration, and verification when complexity warrants. Unit specs and optional globals are indexed in the hub. | [`.agents/specs/technical-review.md`](../.agents/specs/technical-review.md) |
