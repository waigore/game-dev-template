# Sub-game: <!-- fill in: name -->

<!-- Template: copy to sub-games/<kebab-name>.md, one file per sub-game, and delete this line. If the game has no sub-games, mark the topic N/A in ../design.md and create no files. -->

A self-contained game within the game (minigame, side activity, bonus round) with its own rules and end conditions. Rules: [`../design.md`](../design.md#rules-for-every-design-spec).

- **Serves**: <!-- fill in: vision qualities and definition scope items -->
- **Glossary terms**: <!-- fill in: links to ../glossary.md -->

## Purpose

<!-- fill in: why it exists and how it relates to the main game (reward, break in pace, alternate skill) -->

## Entry and exit

IDs: see [`../ids.md`](../ids.md).

- **N1**: <!-- fill in: where and when the player can enter (link flow and stage) and whether it is optional; add one entry per way play returns to the main game -->

## Rules

Precise and complete.

- **R1**: <!-- fill in -->

## Characters and entities

<!-- fill in: links to those used; sub-game-only ones still get their own spec in characters/ or entities/ -->

## State

- **Own state**: <!-- fill in: fields that exist only during the sub-game -->
- **Reads from main game**: <!-- fill in: game-state fields -->
- **Writes back to main game**: <!-- fill in: game-state fields and when -->

## End conditions and rewards

| ID | Outcome | Condition | Effect on main game |
|----|---------|-----------|---------------------|
| <!-- fill in: O1 --> | <!-- fill in: win / loss / other --> | <!-- fill in --> | <!-- fill in --> |

## Difficulty and configuration

<!-- fill in: how difficulty and options apply; parameters live in ../configuration.md -->

## Experience intent

<!-- fill in: how it should feel and how it contrasts with the main game -->
