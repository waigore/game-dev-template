# Reviewing `specs/definition/`

Instructions for agents reviewing the game definition document ([`specs/definition/definition.md`](../../specs/definition/definition.md)) and any files split out beside it. Read [`specs/vision.md`](../../specs/vision.md) first. Run every check, then report a verdict.

## Checklist

### Completeness

- [ ] No `<!-- fill in -->` placeholders remain; unused template rows are deleted.
- [ ] Every section is present: scope, objectives, supported platforms, constraints, quality expectations.
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

### Quality expectations

- [ ] Each expectation has a measurable target and a "how checked" method.
- [ ] Targets name the platform(s) they apply to where relevant.

### Consistency with vision

- [ ] In-scope items do not serve only a vision non-goal.
- [ ] Out-of-scope items do not remove something an essential quality depends on.
- [ ] Objectives support the elevator pitch and player fantasy.
- [ ] Nothing contradicts the vision's essential qualities or tradeoffs.

### Format

- [ ] Reads as roughly one page; each file is under 500 words ([`specs/README.md`](../../specs/README.md)).
- [ ] No technical details (architecture, engine systems, data formats, APIs). Technical *constraints* are fine.

## Verdict

- **Pass**: every check passes.
- **Fail**: one or more checks fail.

Report back in this shape:

```markdown
**Definition review: Pass | Fail**

Findings:
- <section>: <failed check> — <suggested fix>

Notes (optional): <non-blocking observations>
```

List only failed checks under Findings. If a check cannot be judged without product-owner input, list it as a finding and mark it `needs clarification`. If the problem is in `vision.md` rather than the definition, say so.
