# Game Definition

What the game must be, and the limits it is built within. Aim for **one page**. Must stay consistent with [`../vision.md`](../vision.md). Review instructions: [`.agents/specs/definition-review.md`](../../.agents/specs/definition-review.md).

Technical details (architecture, engine systems, data formats) do **not** live here; they belong in their own specs.

## Scope

### In scope

- <!-- fill in: features, modes, or content the game will have -->

### Out of scope

- <!-- fill in: things deliberately excluded (complements the vision's non-goals) -->

## Objectives

### Player objectives

- **Goal**: <!-- fill in: what the player is trying to achieve -->
- **Win / lose conditions**: <!-- fill in: how a session or run ends -->
- **Progression**: <!-- fill in: how the player advances over time -->

### Product objectives

- <!-- fill in: what this project must achieve, e.g. "Playable vertical slice", "Release on itch.io" -->

## Supported platforms

| Platform | Primary input | Priority |
|----------|---------------|----------|
| <!-- fill in: e.g. Windows --> | <!-- fill in: e.g. Keyboard + mouse --> | <!-- primary / secondary / stretch --> |

## Constraints

One line each: the constraint, then why.

### Design

- <!-- fill in: constraint --> — <!-- fill in: reason -->

### Technical

- <!-- fill in: constraint, e.g. "Must run offline" --> — <!-- fill in: reason -->

### Market

- <!-- fill in: constraint, e.g. "Price ≤ $10" --> — <!-- fill in: reason -->

## Quality expectations

Measurable targets for performance, load time, reliability, save durability, accessibility, and localization live in [`quality.md`](quality.md). Each category there applies to this game or is N/A with a reason.

## Splitting this document

If this file passes one page or 500 words, move the longest section to `specs/definition/<section>.md`. Leave a one-line summary and a link here, and add the new file to [`specs/README.md`](../README.md).
