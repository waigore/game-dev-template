---
name: register-asset
description: |-
  Catalog an asset a person supplies (human-made, or third-party they
  sourced) by running APR.register in specs/assets/: asset ID, author or
  source, rights or license, files under the asset root, and an optional
  review exemption granted and recorded by that person. Exempt assets are
  approved on merge; others go through review-asset. Never exempts
  AI-generated assets. Opens a PR.
  Use when the user hands over art, animation, interface art, fonts, or audio
  they or a teammate made or bought, and wants it in the catalog.

  Examples:
    - user: "I drew the player idle sprite, add it" → register, ask about exemption, PR
    - user: "Add my title music, skip review" → register with exemption by the user
    - user: "Register these purchased SFX, review them" → register, license check, review-asset
    - user: "Here's an image from the AI tool" → not human-made; use manage-asset instead
---

# Register asset

Procedure: `APR.register` in [`specs/assets/procedures.md`](../../../specs/assets/procedures.md). Fields: [`specs/assets/catalog.md`](../../../specs/assets/catalog.md). Exemption rule: **Review exemption** in [`specs/assets/assets.md`](../../../specs/assets/assets.md).

## Steps

1. **Gate**. Stop, say what is missing, and offer `capture-requirements`, `author-spec`, or `audit-spec-tbd` when any of these fails:
   - The asset hub's **Catalog** names a manifest and asset root (no TBD), and the hub's Sources table marks the asset's source type (human-made or third-party) as Applies.
   - For main code: a kind spec exists and one of its coverage rules requires the asset. A human-made asset used only by a demo needs neither ([`docs/demo-style-assets.md`](../../../docs/demo-style-assets.md)).
2. **Confirm provenance** with the user: who made or sourced the asset, and whether any AI tool produced or edited any part of it. If AI did, stop: it is not eligible for this skill or for exemption; use [`manage-asset`](../manage-asset/SKILL.md).
3. **Confirm rights**:
   - **Human-made**: the author and the rights they grant the project.
   - **Third-party**: source, license, attribution, and where proof of purchase is kept. The license must fit the definition's market constraints. If it is unclear, stop and ask.
4. **Ask about exemption** with a structured question when available: exempt from `review-asset`, or review it. Never assume the answer, and never grant it yourself. Record a granted exemption with the person's name, the date, and their reason.
5. **Track and branch** per [`docs/pull-requests.md`](../../../docs/pull-requests.md): use the given task, or branch `chore/assets-<slug>` when there is no issue.
6. **Save files** under the asset root per the kind's **Naming**, or `<kind>/<name>` with the hub's kind row in kebab-case for a demo-only asset with no kind spec. Do not alter the content beyond what the user asks (format conversion, renaming).
7. **Catalog**: write the draft entry with every field `catalog.md` requires for its source type: author (`CAT.F16`) or third-party license (`CAT.F12`), and the exemption (`CAT.F17`) if granted.
8. **Review or approve**:
   - **Exempt**: set the state to approved; it takes effect when the PR merges. Run `review-asset` only if the user asks; its verdict is advisory and does not change the state.
   - **Not exempt**: run [`review-asset`](../review-asset/SKILL.md) (`APR.review`). On Pass, approve per the hub's **Approval** rule. On Fail, report the findings to the user; fixes come from the person who supplied the asset.
9. **PR**: open per [`docs/pull-requests.md`](../../../docs/pull-requests.md). **Authority** cites the kind spec and coverage IDs (or the demo task), and the hub's **Review exemption** rule when used. **Test plan** lists the `review-asset` verdict or "Exempt — granted by <person>". If the work delivers a typed issue, run `implement-project-issue`.

## Rules

- Only a person grants an exemption, for one asset at a time. A new version needs the exemption confirmed again.
- AI-generated or AI-edited assets are never registered here and never exempt.
- Do not import a third-party asset whose license is unclear; stop and ask.
- Keep asset IDs stable per `catalog.md`.
