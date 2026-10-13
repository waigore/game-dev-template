# Spec authoring rules

Writing rules for `specs/`. One file per document type. This tree is the only copy of those rules.

Specs and `_template` files keep a section skeleton and an authoring-rules link. They do not contain the rules. Filling a spec must not change files under this directory.

Before creating or editing a file under `specs/`, read the rules file for its path in the table below, then every file named in that rules file's **Also read** line. Follow the [`author-spec`](../../skills/author-spec/SKILL.md) skill. How these rules relate to the review checklists is [alignment.md](../alignment.md).

Match the most specific path. A file split out from a spec uses the rules file of the spec it came from. For example, `specs/definition/quality/performance.md` uses [quality.md](quality.md), and `specs/design/glossary/combat.md` uses [design/glossary.md](design/glossary.md).

Do not paste these rules into a spec. Do not edit a `_template` file to hold one game's content. Copy the template, then fill the copy.

| Path | Rules |
|------|-------|
| `specs/vision.md` | [vision.md](vision.md) |
| `specs/definition/definition.md` | [definition.md](definition.md) |
| `specs/definition/quality.md` | [quality.md](quality.md) |
| `specs/design/design.md` | [design/design.md](design/design.md) |
| `specs/design/glossary.md` | [design/glossary.md](design/glossary.md) |
| `specs/design/traceability.md` | [design/traceability.md](design/traceability.md) |
| `specs/design/ids.md` | [design/ids.md](design/ids.md) |
| `specs/design/stories.md` | [design/stories.md](design/stories.md) |
| `specs/design/stories/` | [design/story.md](design/story.md) |
| `specs/design/story-coverage.md` | [design/story-coverage.md](design/story-coverage.md) |
| `specs/design/game-state.md` | [design/game-state.md](design/game-state.md) |
| `specs/design/configuration.md` | [design/configuration.md](design/configuration.md) |
| `specs/design/difficulty.md` | [design/difficulty.md](design/difficulty.md) |
| `specs/design/progression.md` | [design/progression.md](design/progression.md) |
| `specs/design/end-conditions.md` | [design/end-conditions.md](design/end-conditions.md) |
| `specs/design/world.md` | [design/world.md](design/world.md) |
| `specs/design/experience.md` | [design/experience.md](design/experience.md) |
| `specs/design/characters/` | [design/characters.md](design/characters.md) |
| `specs/design/entities/` | [design/entities.md](design/entities.md) |
| `specs/design/loops/` | [design/loops.md](design/loops.md) |
| `specs/design/features/` | [design/features.md](design/features.md) |
| `specs/design/flows/` | [design/flows.md](design/flows.md) |
| `specs/design/stages/` | [design/stages.md](design/stages.md) |
| `specs/design/scenarios/` | [design/scenarios.md](design/scenarios.md) |
| `specs/design/sub-games/` | [design/sub-games.md](design/sub-games.md) |
| `specs/view/view.md` | [view/view.md](view/view.md) |
| `specs/view/glossary.md` | [view/glossary.md](view/glossary.md) |
| `specs/view/traceability.md` | [view/traceability.md](view/traceability.md) |
| `specs/view/ids.md` | [view/ids.md](view/ids.md) |
| `specs/view/stories.md` | [view/stories.md](view/stories.md) |
| `specs/view/stories/` | [view/story.md](view/story.md) |
| `specs/view/story-coverage.md` | [view/story-coverage.md](view/story-coverage.md) |
| `specs/view/spatial-model.md` | [view/spatial-model.md](view/spatial-model.md) |
| `specs/view/projection.md` | [view/projection.md](view/projection.md) |
| `specs/view/cameras/` | [view/cameras.md](view/cameras.md) |
| `specs/view/camera-controls.md` | [view/camera-controls.md](view/camera-controls.md) |
| `specs/view/physics.md` | [view/physics.md](view/physics.md) |
| `specs/view/perception.md` | [view/perception.md](view/perception.md) |
| `specs/view/audio.md` | [view/audio.md](view/audio.md) |
| `specs/view/haptics.md` | [view/haptics.md](view/haptics.md) |
| `specs/view/diagrams/` | [view/diagrams.md](view/diagrams.md) |
| `specs/ux/ux.md` | [ux/ux.md](ux/ux.md) |
| `specs/ux/glossary.md` | [ux/glossary.md](ux/glossary.md) |
| `specs/ux/traceability.md` | [ux/traceability.md](ux/traceability.md) |
| `specs/ux/ids.md` | [ux/ids.md](ux/ids.md) |
| `specs/ux/stories.md` | [ux/stories.md](ux/stories.md) |
| `specs/ux/stories/` | [ux/story.md](ux/story.md) |
| `specs/ux/story-coverage.md` | [ux/story-coverage.md](ux/story-coverage.md) |
| `specs/ux/navigation.md` | [ux/navigation.md](ux/navigation.md) |
| `specs/ux/exceptions.md` | [ux/exceptions.md](ux/exceptions.md) |
| `specs/ux/controls.md` | [ux/controls.md](ux/controls.md) |
| `specs/ux/presentation.md` | [ux/presentation.md](ux/presentation.md) |
| `specs/ux/actors/` | [ux/actors.md](ux/actors.md) |
| `specs/ux/screens/` | [ux/screens.md](ux/screens.md) |
| `specs/ux/journeys/` | [ux/journeys.md](ux/journeys.md) |
| `specs/ux/mockups/README.md` | [ux/presentation.md](ux/presentation.md) |
| `specs/ux/mockups/screens/` | [ux/screen-mockup.md](ux/screen-mockup.md) |
| `specs/ux/mockups/journeys/` | [ux/journey-mockup.md](ux/journey-mockup.md) |
| `specs/adr/adr.md` | [adr/adr.md](adr/adr.md) |
| `specs/adr/traceability.md` | [adr/traceability.md](adr/traceability.md) |
| `specs/adr/decisions/` | [adr/decision.md](adr/decision.md) |
| `specs/adr/archive/README.md` | [adr/adr.md](adr/adr.md) |
| `specs/adr/archive/` | [adr/decision.md](adr/decision.md) |
| `specs/technical/technical.md` | [technical/technical.md](technical/technical.md) |
| `specs/technical/glossary.md` | [technical/glossary.md](technical/glossary.md) |
| `specs/technical/traceability.md` | [technical/traceability.md](technical/traceability.md) |
| `specs/technical/ids.md` | [technical/ids.md](technical/ids.md) |
| `specs/technical/layers.md` | [technical/layers.md](technical/layers.md) |
| `specs/technical/modules.md` | [technical/modules.md](technical/modules.md) |
| `specs/technical/modules/` | [technical/modules.md](technical/modules.md) |
| `specs/technical/components/` | [technical/components.md](technical/components.md) |
| `specs/technical/contracts/` | [technical/contracts.md](technical/contracts.md) |
| `specs/technical/schemata/` | [technical/schemata.md](technical/schemata.md) |
| `specs/technical/sequences/` | [technical/sequences.md](technical/sequences.md) |
| `specs/technical/failures.md` | [technical/failures.md](technical/failures.md) |
| `specs/technical/concurrency.md` | [technical/concurrency.md](technical/concurrency.md) |
| `specs/technical/persistence.md` | [technical/persistence.md](technical/persistence.md) |
| `specs/technical/configuration.md` | [technical/configuration.md](technical/configuration.md) |
| `specs/technical/verification.md` | [technical/verification.md](technical/verification.md) |
| `specs/technical/_templates/` | matching optional rules file (e.g. [technical/failures.md](technical/failures.md)) |
| `specs/technical/diagrams/` | [technical/diagrams.md](technical/diagrams.md) |

Review checklists stay beside this tree, in [`.agents/specs/`](../). They judge specs. They are not pasted into `specs/` either.
