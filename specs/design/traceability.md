# Design Traceability

How the design aligns with [`../vision.md`](../vision.md) and [`../definition/definition.md`](../definition/definition.md), and which specs cover each required topic. Rules: [`design.md`](design.md#rules-for-every-design-spec).

## Alignment

Every essential quality, in-scope item, and player objective must be served by at least one spec. Nothing may serve only a non-goal or out-of-scope item.

| Upstream item | Source | Served by |
|---------------|--------|-----------|
| <!-- fill in: quality / scope item / objective --> | <!-- vision / definition --> | <!-- fill in: links to design specs --> |

## Topic coverage

Each topic is either covered or marked N/A with a reason grounded in the genre and platform profile in [`design.md`](design.md) or the definition. Fill each Applicability cell with "Applies" or "N/A — reason".

| Topic | Covered in | Applicability |
|-------|------------|---------------|
| Core loop and mechanics | [`loops/`](loops/), [`features/`](features/) | <!-- fill in --> |
| Characters | [`characters/`](characters/) | <!-- fill in --> |
| Entities (items, objects, hazards) | [`entities/`](entities/) | <!-- fill in --> |
| World and narrative | [`world.md`](world.md) | <!-- fill in --> |
| Flows and transitions | [`flows/`](flows/) | <!-- fill in --> |
| Stages and scenes | [`stages/`](stages/) | <!-- fill in --> |
| Game state | [`game-state.md`](game-state.md) | <!-- fill in --> |
| Configuration | [`configuration.md`](configuration.md) | <!-- fill in --> |
| Difficulty settings | [`difficulty.md`](difficulty.md) | <!-- fill in --> |
| Scenarios | [`scenarios/`](scenarios/) | <!-- fill in --> |
| Progress management | [`progression.md`](progression.md) | <!-- fill in --> |
| Sub-games | [`sub-games/`](sub-games/) | <!-- fill in --> |
| Win and loss conditions | [`end-conditions.md`](end-conditions.md) | <!-- fill in --> |
| Economy and resources | [`features/`](features/) | <!-- fill in --> |
| Opponent and NPC behavior | [`characters/`](characters/), [`features/`](features/) | <!-- fill in --> |
| Experience and feel | [`experience.md`](experience.md) | <!-- fill in --> |

## Splitting this document

If this file passes 500 words, move the alignment table to `traceability/alignment.md`, leave a one-line summary and link here, and update [`design.md`](design.md).
