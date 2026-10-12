# Flow: <!-- fill in: name -->

<!-- Template: copy to flows/<kebab-name>.md, one file per flow, and delete this line. -->

A sequence of game phases the player moves through, and the transitions between them, such as the overall game flow, a run, a match, a turn, or stage-to-stage progression. Phases are states of the game, not screens. Rules: [`../design.md`](../design.md#rules-for-every-design-spec).

- **Scope**: <!-- fill in: game / session / run / match / turn / other -->
- **Parent flow**: <!-- fill in: link, or "None" -->
- **Serves**: <!-- fill in: vision qualities and definition scope items -->

## Overview

<!-- fill in: one paragraph describing the flow from start to finish -->

## Phases

| Phase | Purpose | What the player can do | Detailed in |
|-------|---------|------------------------|-------------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in: verbs --> | <!-- fill in: link to stage, loop, sub-game, or child flow --> |

## Transitions

IDs: see [`../ids.md`](../ids.md).

| ID | From | To | Trigger | Conditions | Carries over / resets | Experience intent |
|----|------|----|---------|------------|-----------------------|-------------------|
| <!-- fill in: T1 --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: game-state fields --> | <!-- fill in: e.g. "release of tension" --> |

Every phase must be reachable and have at least one exit, unless it ends the flow.

## Entry and exit

- **N1**: <!-- fill in: how this flow starts and its starting state; add one entry per way it ends, linking end-conditions.md -->

## Interruptions

- **U1**: <!-- fill in: what happens to game state if play is suspended, abandoned, or interrupted mid-flow (e.g. progress kept or lost); link progression.md -->

## Diagram (optional)

<!-- fill in: optional mermaid stateDiagram of phases and transitions; the tables above are authoritative -->
