# Configuration

Everything that varies the game's rules without changing the design: modes and options chosen by the player or host, and designer tunables. This file is the single source of parameter values; other specs reference parameters by name. Describe effects on rules, not menus or settings screens. Rules: [`design.md`](design.md#rules-for-every-design-spec).

## Modes

| Mode | Description | Differs from standard rules by | Flow |
|------|-------------|--------------------------------|------|
| <!-- fill in: e.g. Standard --> | <!-- fill in --> | <!-- fill in, or "Baseline" --> | <!-- fill in: link to flows/ --> |

## Game options

Rule variants and assists the player or host may choose. Difficulty levels live in [`difficulty.md`](difficulty.md).

| Option | Choices | Default | Effect on rules | Chosen by / when | Locked when |
|--------|---------|---------|-----------------|------------------|-------------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: player / host; before run / any time --> | <!-- fill in, or "Never" --> |

## Designer tunables

Balance values a designer adjusts; not player-selectable.

| Parameter | Owner spec | Default | Range | Unit | Effect |
|-----------|------------|---------|-------|------|--------|
| <!-- fill in --> | <!-- fill in: link --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: game units, e.g. hits, tiles, turns --> | <!-- fill in --> |

## Dependencies and restrictions

Modes and options are referenced by name (e.g. `CFG.permadeath`); IDs: see [`ids.md`](ids.md).

- **K1**: <!-- fill in: a combination that is not allowed, an option that depends on another, or an option that affects rewards or progression -->

## Splitting this document

If this file passes 500 words, move tunables to `configuration/<domain>.md` files (e.g. `combat.md`, `economy.md`), keep modes and options here with links, and update owner specs.
