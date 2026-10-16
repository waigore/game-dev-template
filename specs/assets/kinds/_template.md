# Asset Kind: <!-- fill in: name -->

<!-- Template: copy to kinds/<kebab-name>.md and delete this comment. Keep the authoring-rules line. -->

Authoring rules: [`.agents/specs/rules/assets/kinds.md`](../../../.agents/specs/rules/assets/kinds.md).

- **Kind**: <!-- fill in -->
- **Source types**: <!-- fill in -->
- **Style**: <!-- fill in -->
- **Tool roles**: <!-- fill in -->
- **Approval**: <!-- fill in -->
- **Serves**: <!-- fill in -->

## Coverage

| ID | Subject | Required variants | Count |
|----|---------|-------------------|-------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Specification

| ID | Property | Value |
|----|----------|-------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Budgets

| ID | Limit | Value | Traces to |
|----|-------|-------|-----------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Style series

### SS1 — primary

- **State**: <!-- fill in: none | bootstrapping | active | stale -->
- **Style anchors**: <!-- fill in: approved asset IDs, or None yet -->
- **Recraft style id**: <!-- fill in: UUID when active, or None -->
- **Recraft style model / base**: <!-- fill in -->
- **Aesthetics**: <!-- fill in: pillar, PAL, REF IDs -->
- **Built from**: <!-- fill in: anchor IDs + YYYY-MM-DD of last create_style, or None -->
- **Refresh when**: aesthetics change, anchor set change, or review Fail pattern

#### Prompt policy

- **Compose**: subject-first when `active`; do not restate medium/full palette (style applies); always append master + negative. Cite unambiguous IDs only for hierarchy.
- **Master**: <!-- fill in: palette PAL.S…; hierarchy SPC.E… / FRM.P… / lineup; silhouette FRM.L…; contrast PAL.K…; canvas/BG; kind musts -->
- **Negative**: <!-- fill in: off-palette; scale vs cited extents; silhouette-killing detail; low-contrast mud; content limits; tool bad habits -->

## Recipes

### <!-- fill in: R1 — name -->

- **Source type**: <!-- fill in -->
- **Tool role**: <!-- fill in -->
- **Inputs**: <!-- fill in -->
- **Prompt template (bootstrap)**: <!-- fill in: may describe look + REFs; compose with prompt_policy -->
- **Prompt template (series)**: <!-- fill in: subject/variant + {slots}; compose with prompt_policy; no full style restatement -->
- **Settings**: <!-- fill in -->
- **Seed policy**: <!-- fill in: or n/a — tool has no seed -->
- **Post-processing**: <!-- fill in -->
- **Outputs**: <!-- fill in -->

## Checks

| ID | Check | Method | Pass criterion |
|----|-------|--------|----------------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Naming

- **Handle name**: <!-- fill in -->
- **Path**: <!-- fill in -->
