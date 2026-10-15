# Asset Procedures

Authoring rules: [`.agents/specs/rules/assets/procedures.md`](../../.agents/specs/rules/assets/procedures.md).

## When to run

Asset work is tracked by a task issue whose deliverables name asset IDs or coverage rules (`AK-<name>.V<n>`). Assets land through PRs. The `manage-asset` skill runs these procedures, `register-asset` runs `APR.register`, and `review-asset` runs `APR.review`.

## Procedures

### `APR.generate`

- **Trigger**: a coverage rule needs an asset that the catalog lacks.
- **Inputs**: the kind spec, its coverage rule, a recipe whose tool role is realized, style anchors.

1. Add a draft entry with a new asset ID per [`catalog.md`](catalog.md).
2. Fill the recipe's prompt template from the coverage variants, and run it through its tool role.
3. Post-process per the recipe. Save files under the asset root per the kind's naming.
4. Run the kind's checks. On a fail, retry within the limit below.
5. Record the generation record in the entry. Run `APR.review`.

### `APR.import`

- **Trigger**: a coverage rule is met by a third-party asset.

1. Confirm the license allows the definition's market constraints before downloading.
2. Add a draft entry with a new asset ID, source, license, attribution, and where proof of purchase is kept.
3. Post-process to the kind's specification. Run its checks and `APR.review`.

### `APR.register`

- **Trigger**: a person supplies an asset of any source type.

1. Add a draft entry with a new asset ID per [`catalog.md`](catalog.md), the supplier, source type, and rights or license; for a generated asset, the tool and its terms.
2. Ask that person whether to exempt it from review; record a granted exemption in `CAT.F17`.
3. Save files per the kind's naming. If exempt, approve on merge; otherwise run `APR.review`.

### `APR.review`

1. Skip exempt entries unless review is requested; then the verdict is advisory. Otherwise run `review-asset` and record the verdict, date, reviewer, and report link.
2. On Pass, approve per the hub's **Approval** rule. On Fail, fix through `APR.generate` or `APR.update`.

### `APR.update`

- **Trigger**: a fail, a changed aesthetics element, recipe, or tool role, or a request.

1. Keep the asset ID; raise the version; record the reason.
2. Regenerate or edit per the recipe. Run checks and `APR.review`.
3. Re-check assets built from this one.

### `APR.deprecate`

1. Remove every use in main code.
2. Set the state to deprecated, with the reason and the successor ID if any.
3. Delete its files once no branch under review uses them; the entry stays.

### `APR.touch-up`

Optional: [`procedures/touch-up.md`](procedures/touch-up.md).

## Consistency

- **Style anchors**: <!-- fill in: approved asset IDs per kind, or None yet -->
- **Sets**: all variants of one subject are made in one batch with the same inputs and seed policy.
- **Re-review**: a changed aesthetics element, recipe, or tool role reopens every approved asset that cites it.

## Failure handling

- **Retry limit**: <!-- fill in: attempts per asset before asking the user -->
- **Ask the user** after repeated check fails, a second review Fail on the same asset, an unclear license, or a reached cost or quota limit.
