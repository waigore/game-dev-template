# Authoring rules: asset procedures

Read this before editing `specs/assets/procedures.md` or a file split from it. Do not copy these rules into the spec.

Also read [assets.md](assets.md), [tools.md](tools.md), and [catalog.md](catalog.md).

How an agent generates, imports, reviews, updates, and deprecates assets. Steps are agent-facing. Cite tools by role ID. Do not restate catalog fields (`catalog.md`) or recipes (kind specs). No product names.

## When to run

State that asset work is tracked by a task issue whose deliverables name asset IDs or kind coverage rules (`AK-<name>.V<n>`), that assets land through PRs, and that the `manage-asset` skill runs these procedures.

## Procedures

One subsection per procedure, by name: `APR.generate`, `APR.import`, `APR.review`, `APR.update`, `APR.deprecate`. Each states its trigger, inputs, ordered steps, and outputs (files and catalog changes).

- **Generate**: pick the kind spec and coverage rule; add a draft entry with a new asset ID; run the recipe through its tool role; post-process; run the kind's checks; record the generation record; run `APR.review`.
- **Import**: a third-party asset. Confirm the license against the definition's market constraints before download; record source, license, attribution, and proof of purchase; post-process to the kind's specification; run its checks and `APR.review`.
- **Review**: run `review-asset`; record the verdict; approve per the hub's **Approval** rule.
- **Update**: keep the asset ID, raise its version, record the reason; regenerate or edit per the recipe; run checks and `APR.review`; re-check assets built from it.
- **Deprecate**: set the state, the reason, and the successor ID if any. Main code stops using it first. State when its files may be deleted.

## Consistency

How a set stays consistent: which approved assets serve as style anchors for each kind, how a set (all directions or frames of one subject) is made in one batch with shared inputs, and what triggers re-review (a changed aesthetics element, a changed recipe, or a changed tool role).

## Failure handling

The retry limit per recipe, and when the agent stops and asks the user: repeated check failures, a second review Fail on the same asset, an unclear license, or a cost or quota limit reached.

## Splitting

If the file passes 500 words, move each procedure to `procedures/<name>.md`. Leave a summary and links, and update `assets.md`.
