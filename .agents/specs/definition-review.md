# Reviewing `specs/definition/`

Instructions for agents reviewing the game definition ([`specs/definition/definition.md`](../../specs/definition/definition.md), [`specs/definition/quality.md`](../../specs/definition/quality.md)) and any files split out beside them. Authoring rules: [`rules/definition.md`](rules/definition.md) and [`rules/quality.md`](rules/quality.md). Follow [`alignment.md`](alignment.md). Each spec links its rules file and does not contain the rules. Read [`specs/vision.md`](../../specs/vision.md) first. Run every check, then report a verdict.

## Aligned

Same sections and required content as [`rules/definition.md`](rules/definition.md) and [`rules/quality.md`](rules/quality.md). File-level requirements in [`alignment.md`](alignment.md) hold.

### Completeness

- [ ] No `<!-- fill in -->` placeholders remain; unused template rows are deleted.
- [ ] `definition.md` links [`rules/definition.md`](rules/definition.md), and `quality.md` links [`rules/quality.md`](rules/quality.md). Those rules are not pasted into the spec. A split file uses the rules file of the spec it came from.
- [ ] Every section is present: scope, objectives, supported platforms, constraints, spec depth, quality expectations.
- [ ] [`quality.md`](../../specs/definition/quality.md) is linked from the quality expectations section and listed in [`specs/README.md`](../../specs/README.md).
- [ ] Split sections are linked from `definition.md` with a one-line summary and listed in [`specs/README.md`](../../specs/README.md).

### Scope

- [ ] In-scope and out-of-scope lists are both present.
- [ ] Items are concrete enough to decide whether a given feature is in or out.
- [ ] No item is in both lists.

### Objectives

- [ ] Player objectives cover goal, win/lose conditions, and progression.
- [ ] Product objectives are concrete and their completion is verifiable.

### Supported platforms

- [ ] Each platform has a primary input and a priority (primary / secondary / stretch).
- [ ] At least one platform is primary.

### Constraints

- [ ] Design, technical, and market subsections each have at least one constraint or state "None".
- [ ] Each constraint has a one-line reason.
- [ ] Constraints do not contradict each other or the scope.
- [ ] A constraint imposed by an architecture decision cites an ADR ID that exists in [`specs/adr/decisions/`](../../specs/adr/decisions/).

### Spec depth

- [ ] Depth is one of `prototype`, `small`, or `full` ([`rules/depth.md`](rules/depth.md)), with a one-line reason grounded in the scope, product objectives, or constraints.

### Quality expectations

- [ ] Performance, load time / latency, reliability, save durability, accessibility, and localization are each present in [`quality.md`](../../specs/definition/quality.md).
- [ ] Each category is Applies, or N/A with a reason that cites the vision or the supported platforms. At prototype depth, a category other than performance may instead cite spec depth.
- [ ] Each Applies row has a measurable target, the platforms it covers, and a how-checked method. Platforms match the supported-platforms table.
- [ ] An N/A row uses "—" for target, platforms, and how checked.
- [ ] Rows for the same category do not contradict each other, the constraints, or the vision.
- [ ] Targets are observable outcomes. No architecture, engines, data formats, or APIs.
- [ ] A target set or limited by an architecture decision cites an ADR ID that exists in [`specs/adr/decisions/`](../../specs/adr/decisions/).

### Consistency with vision

- [ ] In-scope items do not serve only a vision non-goal.
- [ ] Out-of-scope items do not remove something an essential quality depends on.
- [ ] Objectives support the elevator pitch and player fantasy.

### Format

- [ ] `definition.md` reads as roughly one page. Each file is under 500 words ([`specs/README.md`](../../specs/README.md)).
- [ ] No technical details (architecture, engine systems, data formats, APIs). Technical *constraints* are fine.

## Imposed

- [ ] Nothing in the definition contradicts the vision's essential qualities or tradeoffs, beyond the explicit scope, objective, and constraint checks above.

## Verdict

- **Pass**: every check passes.
- **Fail**: one or more checks fail.

Report back in this shape:

```markdown
**Definition review: Pass | Fail**

Findings:
- <section>: aligned | imposed — <failed check> — <suggested fix>

Notes (optional): <non-blocking observations>
```

List only failed checks under Findings. Tag a check that cannot be judged without product-owner input with `needs clarification` as well. If the problem is in `vision.md` rather than the definition, say so. Refinement follows [`alignment.md`](alignment.md).
