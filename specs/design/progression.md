# Progress Management

How the player advances, and how progress is kept, lost, or reset. Must match the progression objective in [`../definition/definition.md`](../definition/definition.md). Rules: [`design.md`](design.md#rules-for-every-design-spec).

## Progression axes

IDs: see [`ids.md`](ids.md).

| ID | Axis | Kind | Advanced by | Cap |
|----|------|------|-------------|-----|
| <!-- fill in: A1 --> | <!-- fill in --> | <!-- fill in: skill / character power / content unlock / story / collection / rank --> | <!-- fill in --> | <!-- fill in, or "None" --> |

## Unlocks

| ID | Unlock | Requirement | Effect |
|----|--------|-------------|--------|
| <!-- fill in: U1 --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: link to the spec it enables --> |

## Persistence

| ID | What | Persists across | Lost or reset when |
|----|------|-----------------|--------------------|
| <!-- fill in: P1 --> | <!-- fill in: game-state field --> | <!-- fill in: stage / session / run / playthrough --> | <!-- fill in --> |

## Committing progress

Conceptual only, not save-file design.

- **M1**: <!-- fill in: when progress becomes permanent (checkpoints, stage end, at any moment) and where play resumes after interruption -->

## Failure consequences

- **F1**: <!-- fill in: what is lost, kept, or converted on a failure, and why that cost suits the vision -->

## Completion

- **Z1** (finishing the game): <!-- fill in: the game-state condition that counts as completion -->
- **Z2** (after completion): <!-- fill in: e.g. replay, harder cycle, endless mode, or "Ends" -->
- **Z3** (full completion): <!-- fill in: e.g. all collectibles; or "Same as finishing" -->

## Experience intent

<!-- fill in: how growth should feel over minutes, sessions, and the whole game -->
