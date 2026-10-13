# Authoring rules: definition

Read this before editing `specs/definition/definition.md` or a section split out of it. Do not copy these rules into the spec.

Also read [vision.md](vision.md) and keep this document consistent with the vision.

The definition states what the game must be and the limits it is built within. Aim for one page. Technical details (architecture, engine systems, data formats, APIs) do not belong here. A technical constraint is allowed.

Replace every `<!-- fill in -->`. Delete unused rows.

## Scope

- **In scope**: features, modes, or content the game will have.
- **Out of scope**: what is deliberately excluded. This complements the vision's non-goals.

Both lists are present. Items are concrete enough to decide whether a feature is in or out. No item is in both lists. In-scope items must not serve only a vision non-goal. Out-of-scope items must not remove something an essential quality depends on.

## Objectives

### Player objectives

- **Goal**: what the player is trying to achieve.
- **Win / lose conditions**: how a session or run ends.
- **Progression**: how the player advances over time.

### Product objectives

What this project must achieve. Each objective is concrete, and completion is verifiable. Objectives support the elevator pitch and the player fantasy.

## Supported platforms

One row per platform: the platform, its primary input, and a priority of primary, secondary, or stretch. At least one platform is primary.

## Constraints

Three subsections: design, technical, and market. Each has at least one constraint, or the word "None". One line per constraint, then why. Constraints do not contradict each other, the scope, or the vision's qualities and tradeoffs. A constraint imposed by an architecture decision cites its ID, such as `(ADR-0003)`, per [adr/adr.md](adr/adr.md).

## Quality expectations

Measurable targets live in `specs/definition/quality.md`. Link that file. Follow [quality.md](quality.md) when editing it.

## Splitting

If this file passes one page or 500 words, move the longest section to `specs/definition/<section>.md`. Leave a one-line summary and a link here, and add the new file to `specs/README.md`.
