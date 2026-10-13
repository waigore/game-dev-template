# Journey: <!-- fill in: name -->

<!-- Template: copy to journeys/<kebab-name>.md, one file per journey, and delete this line. -->

An ordered path one actor takes through screens that already exist in [`../navigation.md`](../navigation.md). This file sequences screens, controls, and exceptions. It does not define them. Rules: [`../ux.md`](../ux.md#rules-for-every-ux-spec).

- **Actor**: <!-- fill in: link to ../actors/ -->
- **Goal**: <!-- fill in: what the actor is trying to finish -->
- **Serves**: <!-- fill in: vision qualities, definition scope, and the design flow or feature -->
- **Mockup**: copy [`../mockups/journeys/_template.html`](../mockups/journeys/_template.html) to `../mockups/journeys/<kebab-name>.html`
- **Glossary terms**: <!-- fill in: links to ../glossary.md -->

## Entry and exit

IDs: see [`../ids.md`](../ids.md).

- **N1**: Starts on <!-- fill in: UI- key --> when <!-- fill in: condition -->.
- **N2**: Ends on <!-- fill in: UI- key --> when <!-- fill in: the goal is met -->.

## Steps

List order is the path taken when no branch condition holds. Each step uses a control defined on that screen.

| ID | Screen | Control | Arrives at |
|----|--------|---------|------------|
| <!-- S1 --> | <!-- UI- key --> | <!-- qualified control ID --> | <!-- UI- key, or "stays" --> |

## Branches

A branch leaves a step when an exception or a screen state holds. The destination already exists.

| ID | At step | When | Destination |
|----|---------|------|-------------|
| <!-- B1 --> | <!-- S1 --> | <!-- EX.loading, or a qualified state ID --> | <!-- screen key and state --> |

## Experience intent

<!-- fill in: what this path should feel like from entry to exit. -->
