# Authoring rules: asset kind

Read this before editing `specs/assets/kinds/_template.md` or `specs/assets/kinds/<name>.md`. Do not copy these rules into the spec.

Also read [assets.md](assets.md), [ids.md](ids.md), and [catalog.md](catalog.md).

Copy the template to `kinds/<kebab-name>.md`, one file per kind of asset that shares recipes. Do not fill the template in place.

A kind spec states which assets of this kind the game needs, what each must be, how it is made, and how it is checked. It does not list produced assets; the catalog does.

## Header

- **Kind**: the row in the hub's Asset kinds table this spec covers.
- **Source types**: from the hub's Sources table.
- **Style**: the aesthetics element IDs every asset of this kind must conform to, including at least one style pillar.
- **Tool roles**: `TL.<n>` IDs the recipes use.
- **Approval**: "As hub", or a stricter rule.
- **Serves**: vision qualities, definition scope items, and design, view, or UX specs.

## Sections

- **Coverage**: `V1`, `V2`, …. Rules that say which assets must exist. Columns: ID, subject (link a character, entity, stage, screen, or a class such as "every hazard"), required variants (directions, animation states, sizes, palette sets, locales), and the count each subject needs. Together the rules cover every design, view, and UX element that needs this kind.
- **Specification**: `S1`, `S2`, …. Columns: ID, property, and value. Cover what applies: canvas size in pixels, art pixel scale (cite `PRJ.X` or the aesthetics medium), anchor point, padding, background, color limit (cite `PAL`), frame count and frame rate (cite `MOT.T`), triangle or detail limits, texture size, duration, loop, and loudness (cite `SND.L`).
- **Budgets**: `B1`, `B2`, …. Columns: ID, limit (per asset or for the whole kind), value, and the quality target or view value it traces to. Write "None — reason" when nothing limits the kind.
- **Recipes**: `R1`, `R2`, …. One per way of making the asset, primary first. Each states its source type, tool role, inputs (style anchors, `REF.R` images, base assets), prompt template with `{slots}` named after coverage variants, settings, seed policy, post-processing steps, and outputs. A third-party recipe states the license terms required. A human-made recipe states the source type, inputs (style anchors, `REF.R` images, base assets), and outputs; mark tool role, prompt template, settings, and seed policy "N/A — human-made".
- **Checks**: `K1`, `K2`, …. Columns: ID, what is checked, method (automated, agent inspection, or comparison at on-screen size), and pass criterion. Every specification row and budget has a check. At least one check judges style against the cited pillars, and one judges silhouette or readability at the smallest on-screen size when the kind is seen in play.
- **Naming**: the asset name pattern and the path pattern under the asset root. File formats come from the Integration ADR.

## Splitting

If the file passes 500 words, move Recipes to `kinds/<name>/recipes.md`. Leave a summary and a link.
