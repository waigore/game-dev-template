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

- **Medium**: <!-- fill in: visual | audio -->
- **State**: <!-- fill in: none | bootstrapping | active | stale -->
- **Style anchors**: <!-- fill in: approved asset IDs, or None yet -->
- **Binding (visual)**: <!-- fill in: recraft_style_id + model/base when active; else n/a -->
- **Binding (audio)**: <!-- fill in: elevenlabs_binding (voice_id or model/settings); else n/a -->
- **Aesthetics**: <!-- fill in: pillar, PAL/REF or SND IDs -->
- **Built from**: <!-- fill in: anchor IDs + YYYY-MM-DD, or None -->
- **Refresh when**: aesthetics change, anchors change, or review Fail pattern

#### Prompt policy

- **Compose**: subject-first when `active`; append master + negative; cite IDs only.
- **Master**: <!-- fill in: visual PAL/FRM/SPC; audio SND.M/X/V/L; kind musts -->
- **Negative**: <!-- fill in: off-style bans and content limits for the medium -->

## Recipes

### <!-- fill in: R1 — name -->

- **Source type**: <!-- fill in -->
- **Tool role**: <!-- fill in -->
- **Inputs**: <!-- fill in -->
- **Prompt template (bootstrap)**: <!-- fill in: compose with prompt_policy -->
- **Prompt template (series)**: <!-- fill in: subject/variant + {slots}; compose with prompt_policy -->
- **Settings**: <!-- fill in -->
- **Seed policy**: <!-- fill in: or n/a — tool has no seed -->
- **Post-processing**: <!-- fill in: audio — SND.L, trim, loop, format -->
- **Outputs**: <!-- fill in -->

## Checks

| ID | Check | Method | Pass criterion |
|----|-------|--------|----------------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Naming

- **Handle name**: <!-- fill in -->
- **Path**: <!-- fill in -->
