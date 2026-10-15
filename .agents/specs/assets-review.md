# Reviewing `specs/assets/`

Instructions for agents reviewing the asset pipeline specs ([`specs/assets/assets.md`](../../specs/assets/assets.md) and every file under [`specs/assets/`](../../specs/assets/)). Authoring rules for each file are in [`rules/README.md`](rules/README.md). Follow [`alignment.md`](alignment.md). The spec links that file and does not contain the rules. Read [`specs/vision.md`](../../specs/vision.md), [`specs/definition/definition.md`](../../specs/definition/definition.md), [`specs/definition/quality.md`](../../specs/definition/quality.md), [`specs/design/design.md`](../../specs/design/design.md), [`specs/view/view.md`](../../specs/view/view.md), [`specs/aesthetics/aesthetics.md`](../../specs/aesthetics/aesthetics.md), [`specs/ux/ux.md`](../../specs/ux/ux.md), and [`specs/adr/adr.md`](../../specs/adr/adr.md) first. Read every spec and ADR an asset file cites. This reviews the specs, not produced assets; those use the `review-asset` skill. A review may cover the whole set or named files. Cross-spec checks always consider the whole set. Skip `_template.md`. Run every check, then report a verdict.

## Aligned

Same sections and required content as the rules file for each spec in scope. File-level requirements in [`alignment.md`](alignment.md) hold.

### Completeness

- [ ] No `<!-- fill in -->` placeholders remain. Unused template rows are deleted.
- [ ] Each Markdown file links its authoring-rules file from [`rules/README.md`](rules/README.md). Those rules are not pasted into the spec.
- [ ] Purpose, asset kinds, sources, catalog, lifecycle, and the index in `assets.md`, and the alignment and topic coverage tables in `traceability.md`, are filled in.
- [ ] Every skeleton kind row is kept, with applicability and grounds. Every Applies kind is covered by a kind spec, and every kind spec is indexed and exists.
- [ ] Every topic in the coverage table is covered, or N/A with a reason that follows [traceability.md](rules/assets/traceability.md).

### Derived needs

- [ ] Kind applicability is grounded in the view's dimensionality and rendered space, the aesthetics medium, and the design and UX.
- [ ] Coverage rules together cover every character, entity, stage, and screen that needs each kind. Every subject they cite exists.
- [ ] Budgets trace to a quality target or a view value.

### Style link

- [ ] Each kind spec cites aesthetics element IDs that exist, including at least one pillar. No kind spec defines new style.

### Tools

- [ ] Each tool role states its source type, kinds served, required capabilities, and realized by. Each capability traces to an aesthetics element, a kind requirement, or a definition constraint.
- [ ] Realized by is an Accepted Integration ADR that exists, or "Pending — needs Integration ADR". No product, service, model, or format names appear outside ADRs.
- [ ] Access covers each role, and no credential is in the repository.

### Procedures and catalog

- [ ] `APR.generate`, `APR.import`, `APR.register`, `APR.review`, `APR.update`, and `APR.deprecate` each state trigger, inputs, ordered steps, and outputs per [procedures.md](rules/assets/procedures.md). Consistency and failure handling are filled.
- [ ] Manifest and asset root cite an Accepted Integration ADR, or are TBD.
- [ ] Asset ID and handle format and assignment, the skeleton fields, and the integrity rules match [catalog.md](rules/assets/catalog.md); each integrity rule says how it is checked.
- [ ] The hub's approval rule names a `review-asset` Pass. No kind spec weakens it.
- [ ] The hub's review exemption rule is kept as written: per asset, any source type, granted only by a person.
- [ ] The hub's Kind specs column names every kind spec of each Applies kind, written or planned, and no name a handle uses has changed.

### Kind specs

- [ ] Each has the header and sections [kinds.md](rules/assets/kinds.md) requires.
- [ ] Each recipe states source type, tool role, inputs, prompt template, settings, seed policy, post-processing, and outputs. A third-party recipe states required license terms. A human-made recipe marks tool role, prompt template, settings, and seed policy N/A.
- [ ] Every specification row and budget has a check. A style check cites the pillars, and a readability check exists when the kind is seen in play.

### Shared language and IDs

- [ ] Each pipeline term is defined once in `glossary.md`. Style, design, view, and UI terms stay in their glossaries.
- [ ] Every section listed in [`ids.md`](rules/assets/ids.md) gives each element an ID in the prescribed form. Cited IDs exist.

### Scope boundaries

- [ ] No produced-asset lists in Markdown; the catalog holds them. No code.

### Format

- [ ] Each Markdown file is under 500 words. Oversized Markdown is split per the rules and linked.

## Imposed

- [ ] Two agents following the same recipe would produce assets that pass the same checks.
- [ ] Budgets are plausible on every primary platform.

## Verdict

Report back in this shape:

```markdown
**Asset pipeline review: Pass | Fail**

Scope: <whole set | listed files>

Findings:
- <file>: aligned | imposed — <failed check> — <suggested fix>

Notes (optional): <non-blocking observations>
```

List only failed checks under Findings. Tag a check that cannot be judged without product-owner input with `needs clarification` as well. If the problem is in an upstream spec, say so. Refinement follows [`alignment.md`](alignment.md).
