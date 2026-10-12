# Game Design

The complete, self-contained description of how the game works and how it should feel to play. Downstream of [`../vision.md`](../vision.md) and [`../definition/definition.md`](../definition/definition.md): if this design conflicts with them, the design changes (or the upstream doc is revised first). Review instructions: [`.agents/specs/design-review.md`](../../.agents/specs/design-review.md).

## Rules for every design spec

- **Self-contained**: describe every rule, character, and behavior in full, even if the game or genre is well known. Avoid external references ("like chess", links); a comparison may help, but the spec must stand without it.
- **Game design, not UX**: describe what happens in the game and why. Player actions are verbs (jump, trade), not inputs, buttons, screens, menus, or layouts.
- **Conceptual, logical, experiential**: no engines, frameworks, code, data formats, or platform APIs. Platforms appear only as design implications (see profile below).
- **Shared language**: define each term once in [`glossary.md`](glossary.md), each character in [`characters/`](characters/), each entity in [`entities/`](entities/). Other specs link; they never redefine.
- **Traceable**: every spec states which vision qualities and definition scope items it serves; [`traceability.md`](traceability.md) maps all of them.
- **Concise files**: each file under 500 words; decompose by logical unit and link.

## Genre and platform profile

- **Genre(s)**: <!-- fill in -->
- **Conventions adopted**: <!-- fill in: convention — how this game applies it -->
- **Conventions rejected or changed**: <!-- fill in: convention — why, traced to the vision -->
- **Platform implications**: <!-- fill in: for each supported platform in the definition, its conceptual effect on design, e.g. "Short sessions → a run lasts ≤5 minutes". No hardware or input mapping. -->

## Traceability

[`traceability.md`](traceability.md) maps every vision quality, scope item, and player objective to the specs that serve it, and records which required topics apply to this game (or why they do not).

## Index

Global specs: [`glossary.md`](glossary.md), [`traceability.md`](traceability.md), [`game-state.md`](game-state.md), [`configuration.md`](configuration.md), [`difficulty.md`](difficulty.md), [`progression.md`](progression.md), [`end-conditions.md`](end-conditions.md), [`world.md`](world.md), [`experience.md`](experience.md).

Unit specs: copy the folder's `_template.md` to `<kebab-name>.md`, fill it in, and list it below.

- **Characters**: <!-- fill in: links -->
- **Entities**: <!-- fill in: links -->
- **Loops**: <!-- fill in: links -->
- **Features**: <!-- fill in: links -->
- **Flows**: <!-- fill in: links -->
- **Stages**: <!-- fill in: links -->
- **Scenarios**: <!-- fill in: links -->
- **Sub-games**: <!-- fill in: links, or "None" -->

If the index pushes this file past 500 words, move it to `index.md` and link it here.
