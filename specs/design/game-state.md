# Game State

The conceptual model of everything the game tracks. Logical only: no data formats or storage. Other specs reference fields by the names defined here. Rules: [`design.md`](design.md#rules-for-every-design-spec).

## Scopes

| Scope | Lifetime | Examples in this game |
|-------|----------|-----------------------|
| Moment | <!-- fill in: e.g. within a turn or encounter --> | <!-- fill in --> |
| Stage | <!-- fill in: e.g. from stage entry to exit --> | <!-- fill in --> |
| Session / run | <!-- fill in: e.g. one run or match --> | <!-- fill in --> |
| Persistent | Across sessions; see [`progression.md`](progression.md) | <!-- fill in --> |
| Configuration | Chosen before or during play; see [`configuration.md`](configuration.md) | <!-- fill in --> |

Delete scopes that do not apply to this game.

## Fields

| Field | Scope | Meaning | Initial value | Changed by | Invariants |
|-------|-------|---------|---------------|------------|------------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: links to specs --> | <!-- fill in: e.g. "0 ≤ value ≤ max" --> |

Fields are referenced by name (e.g. `GS.health`). Player stories prove each field's initial value, its reset when its scope's lifetime ends, and its invariants.

## Derived values

Values computed from fields, never stored independently.

| Value | Derived from | Used by |
|-------|--------------|---------|
| <!-- fill in --> | <!-- fill in: fields and rule --> | <!-- fill in: links --> |

## Global invariants

Rules that must hold at all times across fields. IDs: see [`ids.md`](ids.md).

- **V1**: <!-- fill in -->

## Hidden and visible state

What the player can know, not how it is displayed.

- **H1**: <!-- fill in: a field the player knows, can infer, or cannot know (e.g. opponent hands, fog of war), the condition that reveals or hides it, and why -->

## Randomness and determinism

- **Q1**: <!-- fill in: one random outcome, its range or distribution, and whether identical setups must produce identical outcomes (e.g. for fairness or shared challenges) -->

## Splitting this document

If this file passes 500 words, split fields by scope or domain into `game-state/<name>.md`, keep this file as the overview and index, and update links.
