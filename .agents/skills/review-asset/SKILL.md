---
name: review-asset
description: |-
  Review produced assets against their kind spec in specs/assets/ and the
  style in specs/aesthetics/: catalog record, style series binding,
  structured generation, specification, budgets, kind checks, style pillars,
  visual palette/hierarchy/silhouette/contrast or aural SND/loudness identity,
  readability, content limits, and license. Pass/Fail with findings tagged by
  element ID. Read-only.
  Use from manage-asset after generation, from verify-project-issue when a PR
  adds or changes assets, or on demand.

  Examples:
    - user: "Review the new player sprites" → those asset IDs, report in chat
    - user: "Review the jump SFX" → loudness, duration, series binding, aural identity
    - manage-asset: drafts ready → review, return verdict to the caller
    - verify-project-issue: PR #40 adds assets → review the PR's catalog changes
---

# Review asset

Read-only review of produced assets. Spec review of `specs/assets/` itself is [`review-spec`](../review-spec/SKILL.md).

## Steps

1. **Resolve the scope**: named asset IDs, every catalog entry a PR adds or changes, or every entry of one kind. Drop review-exempt entries (`CAT.F17`) unless they were named explicitly; for each one dropped, check only that the exemption is valid (names the person who granted it, with date and reason) and the catalog checks below. A review of a named exempt entry is advisory: report it, but it does not change the asset's state.
2. **Load** each entry file from the catalog root the asset hub names, its kind spec (including Style series `SS1` and medium), the aesthetics elements the kind cites (and their pillars), content limits, reference sheets and `REF` images or sonic anchors, style anchors, and the view values the kind cites.
3. **Inspect** each asset's files. Open images or listen to / measure audio. Measure what can be measured (canvas size, colors vs palette set, frame count, duration, sample rate, loudness, file size). Compare against reference sheets, style anchors, and lineup/silhouette or aural identity rules.
4. **Check**, recording each failure with the ID it breaks:
   - **Catalog**: every field `catalog/fields.md` requires; cited coverage, serves, recipe, tool role IDs exist; asset ID is UUID v7 and unique with handle; touch-ups (`CAT.F19`) complete (`agreed_by` when person-supplied); for agent-generated entries, structured `generation` has `prompt`, `tool`, `operation`, `settings`, `inputs` (and `series` plus `input_style_id` or `elevenlabs_binding` fields when the kind series is `active`); no banned tools.
   - **Style series**: when the kind Style series is `active`, entry `generation.series` matches the registry binding (`recraft_style_id` or `elevenlabs_binding`) and series id; bootstrap-only runs are allowed only when series is not `active`.
   - **Specification and budgets**: every `S` and `B` row.
   - **Kind checks**: every `K` row by its method.
   - **Style / identity (visual)**: cited aesthetics elements and pillars; palette, size/shape hierarchy, silhouettes, and contrast the series `prompt_policy` cites (three pillars: binding, prompting record, this visual review). Skip when medium is audio.
   - **Style / identity (audio)**: cited `SND` rows and pillars; timbre/genre/mood vs anchors and `prompt_policy`; duration/loop; loudness vs `SND.L` (three pillars: binding, prompting record, this aural review). Skip visual-only checks when medium is audio.
   - **Readability**: silhouette and color at smallest on-screen size when seen in play (visual only).
   - **Content limits** and **license**.
5. **Judge what you cannot measure** as `needs human` rather than passing it.
6. **Report** in the shape below.

## Finding tags

| Tag | Meaning |
|-----|---------|
| `catalog` | Entry missing a required field or citing an ID that does not exist |
| `series` | Style series binding missing or mismatched vs kind registry |
| `spec` | Breaks a kind specification row |
| `budget` | Exceeds a kind budget |
| `check` | Fails a kind check |
| `style` | Breaks an aesthetics element or pillar test |
| `readability` | Fails a silhouette or color rule at on-screen size |
| `content` | Breaks a content limit |
| `license` | License missing, unclear, or incompatible |
| `needs human` | Cannot be judged by the agent |

## Report shape

```markdown
**Asset review: Pass | Fail**

Scope: <asset IDs | PR #n | kind>

Findings:
- <asset ID> — <tag> — <element ID> — <evidence> — <suggested fix>

Needs human: <items, or none>
```

**Pass** only when there are no findings other than `needs human`, and every `needs human` item is signed off by the product owner on the PR or issue.

## Rules

- Read-only: do not edit assets, the catalog, or specs. Fixes go through `manage-asset` or `establish-asset-style`. A suggested fix may be a touch-up (`APR.touch-up`) when an edit would fix the finding.
- Judge against the specs only. Do not invent style criteria; a gap in the specs is a note for `author-spec`, not a finding.
- Do not change issue labels or status.
