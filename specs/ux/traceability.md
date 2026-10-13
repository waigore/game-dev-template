# UX Traceability

How the UX aligns with [`../vision.md`](../vision.md), [`../definition/definition.md`](../definition/definition.md), [`../definition/quality.md`](../definition/quality.md), and [`../design/design.md`](../design/design.md). Rules: [`ux.md`](ux.md#rules-for-every-ux-spec).

## Alignment

Every interface surface serves a vision quality, a definition scope item, or a design spec. Nothing serves only a non-goal or an out-of-scope item.

| Upstream item | Source | Served by |
|---------------|--------|-----------|
| <!-- fill in: quality, scope item, or design flow or feature --> | <!-- vision / definition / design --> | <!-- fill in: links to UX specs --> |

## Topic coverage

Each topic is covered, or marked N/A with a reason grounded in the definition or the design. Fill Applicability with "Applies" or "N/A — reason".

| Topic | Covered in | Applicability |
|-------|------------|---------------|
| Actors | [`actors/`](actors/) | <!-- fill in --> |
| Screens | [`screens/`](screens/), [`navigation.md`](navigation.md) | <!-- fill in --> |
| Journeys | [`journeys/`](journeys/) | <!-- fill in --> |
| Navigation | [`navigation.md`](navigation.md) | <!-- fill in --> |
| Exception states | [`exceptions.md`](exceptions.md) | <!-- fill in --> |
| Controls and bindings | [`controls.md`](controls.md) | <!-- fill in --> |
| Mockups | [`mockups/`](mockups/), [`presentation.md`](presentation.md) | <!-- fill in --> |
| Accessibility presentation | [`screens/`](screens/), [`presentation.md`](presentation.md) | <!-- fill in: Applies when quality.md accessibility Applies --> |
| Localization copy | screen copy tables | <!-- fill in: Applies when quality.md localization Applies --> |
| Save-failure feedback | `EX.save-failure` | <!-- fill in: Applies when quality.md save durability Applies --> |

## Splitting this document

If this file passes 500 words, move the alignment table to `traceability/alignment.md`, leave a summary and a link here, and update [`ux.md`](ux.md).
