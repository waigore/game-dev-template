# UX Design

How people operate the interface: screens, navigation, controls, copy, feedback, and exception UI. Downstream of [`../vision.md`](../vision.md), [`../definition/definition.md`](../definition/definition.md), [`../definition/quality.md`](../definition/quality.md), and [`../design/design.md`](../design/design.md). If this UX conflicts with them, the UX changes, or the upstream doc is revised first. Review instructions: [`.agents/specs/ux-review.md`](../../.agents/specs/ux-review.md).

Game design states what happens in the game. This folder states how an actor sees that game and operates it.

## Rules for every UX spec

- **Interface behavior**: describe screens, regions, controls, navigation, copy, and exception UI. Cite design element IDs for the game fact on screen. When a screen needs a rule the design does not state, add that rule to the design first.
- **Operators**: actors are people who use the interface, defined in [`actors/`](actors/). Game characters stay in [`../design/characters/`](../design/characters/). Link a character when a screen represents one.
- **Defined once**: terms live in [`glossary.md`](glossary.md). Each screen, exception, UI action, and binding is defined in one file. Other specs link it.
- **Traceable**: every spec states which vision qualities, definition scope items, and design specs it serves. [`traceability.md`](traceability.md) maps all of them.
- **Identified and proven**: every behavior-defining element carries a stable ID per [`ids.md`](ids.md) and is proven by Given/When/Then [user stories](stories.md).
- **Shown**: every screen and journey links an HTML mockup under [`mockups/`](mockups/), produced per [`presentation.md`](presentation.md). The mockup matches the spec and adds no screen, control, or state.
- **Concise files**: each Markdown file stays under 500 words. HTML mockups are exempt. Decompose by logical unit and link.

## Index

Global specs: [`glossary.md`](glossary.md), [`traceability.md`](traceability.md), [`ids.md`](ids.md), [`navigation.md`](navigation.md), [`exceptions.md`](exceptions.md), [`controls.md`](controls.md), [`stories.md`](stories.md) (indexes the story files), [`story-coverage.md`](story-coverage.md), [`presentation.md`](presentation.md).

Unit specs: copy the folder's `_template.md` to `<kebab-name>.md`, fill it in, and list it below.

- **Actors**: <!-- fill in: links -->
- **Screens**: <!-- fill in: links -->
- **Journeys**: <!-- fill in: links -->

If the index pushes this file past 500 words, move it to `index.md` and link it here.
