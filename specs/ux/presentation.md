# Presentation

How HTML mockups are produced and bound to a visual system. Rules: [`ux.md`](ux.md#rules-for-every-ux-spec).

Mockups are views of the UX, for reading the flow. They are not the implementation. They add no behavior the specs omit.

## Binding

Record the [Open Design](https://github.com/nexu-io/open-design) choices for this game here. Do not add `.open-design.json` at the repository root. That file would bind every design task in the repo to one artifact.

- **Design system**: <!-- fill in: slug and path, e.g. `linear` / `design-systems/linear` -->
- **Content root**: the Open Design clone the [open-design skill](https://github.com/sugarforever/open-design-skill) reads (`OPEN_DESIGN_ROOT`, or `~/.open-design-skill/repo` when unset).

## Surfaces

| Surface | Screens | Template | Craft |
|---------|---------|----------|-------|
| Meta UI: menus, onboarding, settings, results | <!-- fill in: UI- keys --> | <!-- fill in: `mobile-app` when the primary platform is a phone or tablet; `web-prototype` when it is a desktop or web window --> | `state-coverage`, accessibility |
| Play UI: HUD and in-play overlays | <!-- fill in: UI- keys --> | [`mockups/screens/_template.html`](mockups/screens/_template.html), using this design system's color, typography, and components | `state-coverage`, accessibility |

When the definition lists both a phone platform and a desktop platform, give each platform its own row and its own mockup, named `<screen>.<platform>.html`.

## Producing a mockup

1. Copy [`mockups/screens/_template.html`](mockups/screens/_template.html) or [`mockups/journeys/_template.html`](mockups/journeys/_template.html) to the path named in the screen or journey spec.
2. Follow the open-design skill. Read the bound `DESIGN.md`, the chosen template's `SKILL.md` when the surface uses one, and the craft files named in the surfaces table plus any that template requires.
3. Write the filled HTML at the spec's path. The seed's instruction to write `index.html` at the project root does not apply.
4. Keep `data-screen`, `data-region`, `data-control`, and `data-state`, so journey links and stories still match the spec.
5. Link an exception branch to that screen's anchor: `#ex-loading` for `EX.loading`.
6. Use the copy and controls from the screen spec.

## Accessibility and localization

When accessibility Applies in [`../definition/quality.md`](../definition/quality.md), mockups meet that target, including contrast, text scale, and a path that stays understandable with one sensory channel removed. When localization Applies, mockup strings match the screen's copy table.

## Splitting this document

If this file passes 500 words, move the surfaces table to `presentation/surfaces.md`, leave a summary and a link here, and update [`ux.md`](ux.md).
