# Screen: <!-- fill in: name -->

<!-- Template: copy to screens/<kebab-name>.md, one file per screen, and delete this line. -->

One interface surface with one job. [`../navigation.md`](../navigation.md) lists it. Journeys only sequence it. Rules: [`../ux.md`](../ux.md#rules-for-every-ux-spec).

- **Job**: <!-- fill in: the one thing this screen is for -->
- **Actors**: <!-- fill in: links to ../actors/ -->
- **Serves**: <!-- fill in: vision qualities, definition scope, and design specs this screen surfaces -->
- **Mockup**: copy [`../mockups/screens/_template.html`](../mockups/screens/_template.html) to `../mockups/screens/<kebab-name>.html`
- **Glossary terms**: <!-- fill in: links to ../glossary.md -->

## Shows

Game facts this screen presents. Cite design IDs. Leave the rule in the design spec.

| Shown in | Design element | Visible when |
|----------|----------------|--------------|
| <!-- fill in: region ID --> | <!-- fill in: e.g. GS.health --> | <!-- fill in: cite the design knowledge rule, or "always on this screen" --> |

## Regions

IDs: see [`../ids.md`](../ids.md). List order is top to bottom, then leading edge to trailing edge.

| ID | Region | Purpose | Contents |
|----|--------|---------|----------|
| <!-- R1 --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: copy keys, design facts, child controls --> |

## Controls

List order is the focus order ([`../controls.md`](../controls.md) **F1**).

| ID | Control | UI action | Available when | Result |
|----|---------|-----------|----------------|--------|
| <!-- C1 --> | <!-- fill in: visible name --> | <!-- fill in: IN.confirm, or "None" --> | <!-- fill in --> | <!-- fill in: screen key, exception ID, or the design verb this activation asks the game to perform --> |

## States

The mockup anchor is `state-default` for the default row, and `ex-<name>` for `EX.<name>`.

| ID | State | Entered when | Actor sees | Actor can |
|----|-------|--------------|------------|-----------|
| <!-- S1 --> | Default | <!-- fill in: how the screen opens --> | <!-- fill in --> | <!-- fill in: control IDs --> |
| <!-- S2 --> | <!-- EX.loading --> | <!-- fill in: that exception's condition on this screen --> | <!-- fill in --> | <!-- fill in --> |

## Copy

Literal actor-facing strings. When localization Applies in [`../../definition/quality.md`](../../definition/quality.md), these strings vary by locale.

| Key | String | Used in |
|-----|--------|---------|
| <!-- fill in: title --> | <!-- fill in --> | <!-- fill in: region or control ID --> |

## Experience intent

<!-- fill in: what operating this screen should feel like. Intent only. -->
