---
name: review-asset
description: |-
  Review produced assets against their kind spec in specs/assets/ and the
  style in specs/aesthetics/: catalog record, specification, budgets, kind
  checks, style pillars, readability at on-screen size, content limits, and
  license. Pass/Fail with findings tagged by element ID. Read-only.
  Use from manage-asset after generation, from verify-project-issue when a PR
  adds or changes assets, or on demand.

  Examples:
    - user: "Review the new player sprites" → those asset IDs, report in chat
    - manage-asset: drafts ready → review, return verdict to the caller
    - verify-project-issue: PR #40 adds assets → review the PR's catalog changes
---

# Review asset

Read-only review of produced assets. Spec review of `specs/assets/` itself is [`review-spec`](../review-spec/SKILL.md).

## Steps

1. **Resolve the scope**: named asset IDs, every catalog entry a PR adds or changes, or every entry of one kind.
2. **Load** each entry from the manifest the asset hub names, its kind spec, the aesthetics elements the kind cites (and their pillars), `specs/aesthetics/aesthetics.md` content limits, the reference sheets and `REF` images they point to, and the view values the kind cites.
3. **Inspect** each asset's files. Open images directly. Measure what can be measured (canvas size, colors used against the palette set, frame count, duration, loudness, file size) with commands in the repository's environment. Compare against reference sheets and style anchors.
4. **Check**, recording each failure with the ID it breaks:
   - **Catalog**: every field `catalog.md` requires for the entry's source type and state; the cited coverage, serves, recipe, and tool role IDs exist.
   - **Specification and budgets**: every `S` and `B` row of the kind spec.
   - **Kind checks**: every `K` row, by its stated method.
   - **Style**: each cited aesthetics element, and each cited pillar's "conforms if…" test.
   - **Readability**: silhouette and color rules at the smallest on-screen size, when the kind is seen in play.
   - **Content limits** and **license**: nothing the aesthetics forbid; license terms recorded and fit the definition's market constraints.
5. **Judge what you cannot measure**. When a check needs a human, such as listening for sound style, report it as `needs human` rather than passing it.
6. **Report** in the shape below to the request source (chat, issue or PR comment, or calling skill).

## Finding tags

| Tag | Meaning |
|-----|---------|
| `catalog` | Entry missing a required field or citing an ID that does not exist |
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

- Read-only: do not edit assets, the catalog, or specs. Fixes go through `manage-asset`.
- Judge against the specs only. Do not invent style criteria; a gap in the specs is a note for `author-spec`, not a finding.
- Do not change issue labels or status.
