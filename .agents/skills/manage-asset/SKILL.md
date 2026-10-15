---
name: manage-asset
description: |-
  Generate, import, update, or deprecate game assets by running the asset
  pipeline procedures in specs/assets/ against the style in specs/aesthetics/,
  record every change in the catalog manifest, get each draft reviewed with
  review-asset, and open a PR. Spec first: only assets a coverage rule
  requires, only through tool roles realized by Accepted ADRs.
  Use when the user asks to create, generate, source, regenerate, replace, or
  retire art, animation, interface art, fonts, or audio.

  Examples:
    - user: "Generate the player run sprites" → APR.generate from the kind recipe, checks, review, PR
    - user: "Use this licensed tileset for the forest" → APR.import, license check, catalog, review
    - user: "Regenerate the slime with the new palette" → APR.update, version bump, re-review
    - user: "Retire the old HUD icons" → APR.deprecate with successor IDs
---

# Manage asset

Procedures: [`specs/assets/procedures.md`](../../../specs/assets/procedures.md). Style: [`specs/aesthetics/`](../../../specs/aesthetics/aesthetics.md). Review: [`review-asset`](../review-asset/SKILL.md).

## Steps

1. **Gate**. Stop, say what is missing, and offer `capture-requirements`, `author-spec`, or `audit-spec-tbd` when any of these fails:
   - The asset hub's **Catalog** names a manifest and asset root (no TBD), and **Approval** is filled.
   - The target kind spec exists. Its coverage rule, specification, recipe, and checks hold no placeholder or TBD.
   - Every aesthetics element the kind cites exists and holds no TBD.
   - The recipe's tool role in `specs/assets/tools.md` is realized by an **Accepted** ADR. Read that ADR for the tool to use.
2. **Resolve the request** to one procedure (`APR.generate`, `APR.import`, `APR.update`, or `APR.deprecate`), the kind spec, the coverage rules, and the asset IDs. If no coverage rule requires the asset, stop: spec first. Offer to add the coverage rule with `author-spec`.
3. **Confirm scope** with the user when the request spans more than one coverage rule or would exceed a cost or quota limit in `tools.md`: list the assets, the recipe, and the expected runs. Use a structured question when available.
4. **Track and branch** per [`docs/pull-requests.md`](../../../docs/pull-requests.md): use the given task, or branch `chore/assets-<slug>` when the user asks for no issue.
5. **Run the procedure** exactly as `procedures.md` states. For generation, fill the recipe's prompt template from the coverage variants; use the style anchors and `REF` images it names; follow the settings and seed policy; post-process; save files per the kind's **Naming**.
6. **Check**: run every check in the kind spec. Retry within the retry limit in `procedures.md`, then stop and ask the user.
7. **Catalog**: write or update the entry with every field [`catalog/fields.md`](../../../specs/assets/catalog/fields.md) requires for its source type and state, including the generation record as run. For a new asset, per **Asset IDs** in `catalog.md`: take the asset ID from `python3 .github/scripts/new_asset_id.py`, never typed or copied; build the handle from the kind spec's name in the hub, and confirm it is unused in the manifest on `main` (deprecated entries included) and in the catalog changes of every open PR. On a clash, choose another name.
8. **Review**: run `review-asset` on the changed entries (`APR.review`). On Fail, fix through step 5 within the limit. On Pass, approve per the hub's **Approval** rule; when it needs product-owner sign-off, leave the state draft and label the PR `no-automerge`. An entry of any source type skips review only when a person grants a review exemption for it (`CAT.F17`). Never assume, infer, or default to an exemption, and never grant one yourself.
9. **PR**: open per [`docs/pull-requests.md`](../../../docs/pull-requests.md). **Authority** cites the kind spec, coverage IDs, aesthetics IDs, and the ADRs of the tool roles used. **Test plan** lists checks run and the `review-asset` verdict. If the work delivers a typed issue, run `implement-project-issue`.

## Rules

- Never invent a recipe, prompt, setting, style choice, or coverage rule. A missing one goes into specs first, confirmed by the user.
- Use only tools that an Accepted ADR names for a realized role. Credentials never enter the repository.
- Do not import a third-party asset whose license is unclear; stop and ask.
- Main code uses only approved assets. Do not wire a draft into main code.
- Assets a person made, generated, or sourced themselves go through [`register-asset`](../register-asset/SKILL.md), not this skill.
- Never change or reuse an asset ID; rename a handle only on request, per `catalog.md`.
