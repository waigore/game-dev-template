# UX mockups

HTML views of the screens and journeys in [`../ux.md`](../ux.md). How to fill them in: [`../presentation.md`](../presentation.md).

| Template | Copy to |
|----------|---------|
| [`screens/_template.html`](screens/_template.html) | `screens/<kebab-name>.html`, one per screen |
| [`journeys/_template.html`](journeys/_template.html) | `journeys/<kebab-name>.html`, one per journey |

Open a journey file to walk its steps. Each step loads that screen in the stage. A screen file also opens on its own. State links on a screen show its default and each exception it uses. If the stage is empty, open the step link in the same window.

These files are visual artifacts. The Markdown word limit does not apply to them. When a mockup and a spec disagree, the spec wins and the mockup changes.
