# Reviewing `specs/design/`

Instructions for agents reviewing the game design ([`specs/design/design.md`](../../specs/design/design.md) and every file under [`specs/design/`](../../specs/design/)). Read [`specs/vision.md`](../../specs/vision.md) and [`specs/definition/definition.md`](../../specs/definition/definition.md) first. A review may cover the whole design or named files; cross-spec checks always consider the whole design. Skip `_template.md` files. Run every check, then report a verdict.

## Checklist

### Completeness

- [ ] No `<!-- fill in -->` placeholders remain; unused template rows and sections are deleted.
- [ ] The genre and platform profile and index in `design.md`, and the alignment and topic coverage tables in `traceability.md`, are filled in.
- [ ] Every topic in the coverage table is covered, or marked N/A with a reason grounded in the genre profile or definition.
- [ ] Every unit spec is listed in the `design.md` index, and every indexed file exists.

### Self-contained detail

- [ ] Every rule, character, entity, and behavior is described in full, even for well-known games or genres.
- [ ] No spec depends on an external reference (named game, wiki, link) to be understood.
- [ ] Rules are precise: two readers would resolve the same situation identically.
- [ ] Edge cases and simultaneous events have stated outcomes.
- [ ] Every walkthrough in `scenarios/` can be resolved step by step from the other specs.

### Shared language

- [ ] Each game term is defined once in `glossary.md` and used consistently; no synonyms.
- [ ] Each character and entity is defined once in its own file; other specs link instead of redefining.
- [ ] Parameter values appear only in `configuration.md`; other specs reference them by name.
- [ ] Game-state fields referenced anywhere exist in `game-state.md`.

### Internal consistency

- [ ] Every flow phase is reachable and has an exit, unless it ends the flow; every stage is reachable from some flow.
- [ ] Transitions state what carries over and what resets.
- [ ] End-condition IDs referenced elsewhere exist; precedence covers simultaneous conditions.
- [ ] Difficulty adjustments reference existing parameters and specs.
- [ ] Progression persistence agrees with flows, end conditions, and game-state scopes.
- [ ] No two specs contradict each other.

### Element IDs

- [ ] Every section listed in [`ids.md`](../../specs/design/ids.md) gives each element an ID in the prescribed form, unique within its spec.
- [ ] Qualified IDs cited anywhere (e.g. `F-movement.R3`) exist.

### Player stories

Rules: [`stories.md`](../../specs/design/stories.md).

- [ ] Every design spec with element IDs has a story file at the mirrored path under `stories/`, listed in the `stories.md` index; no story file lacks a design spec.
- [ ] Every element ID is proven by at least one scenario, and each coverage table agrees with its scenarios' **Proves** lines.
- [ ] Conditional elements have a holds and a does-not-hold scenario; numeric thresholds have boundary scenarios; difficulty levels and options that change an element have their own scenarios.
- [ ] Each scenario has a complete Given, one When (a player verb or design-defined game event; chained only in walkthrough stories), and a Then with concrete values that match `configuration.md` or the Given.
- [ ] Each scenario is falsifiable: an implementation that breaks the element it proves would fail it. No subjective wording.
- [ ] No scenario asserts behavior absent from the design, or mentions screens, inputs, or presentation.

### Alignment with vision and definition

- [ ] Every essential quality, in-scope item, and player objective is served by at least one spec, and `traceability.md` reflects this.
- [ ] Nothing serves only a vision non-goal or definition out-of-scope item.
- [ ] Win/lose conditions and progression match the definition's player objectives.
- [ ] Where qualities conflict in the design, the vision's tradeoff order is followed.
- [ ] Every spec states what it serves.

### Genre and platform fit

- [ ] Adopted and rejected genre conventions are reflected in the relevant specs.
- [ ] Platform implications (e.g. session length) are reflected in pacing, flows, and progression.
- [ ] Platforms appear only as design implications, never as hardware, input mapping, or APIs.

### Scope boundaries

- [ ] No UX design: no screens, menus, layouts, widgets, or input bindings. Player actions are verbs.
- [ ] No technical design: no engines, frameworks, code, data formats, or storage.
- [ ] Presentation appears only as experience intent.

### Format

- [ ] Each file is under 500 words ([`specs/README.md`](../../specs/README.md)); oversized files are split by logical unit and linked.

## Verdict

- **Pass**: every check passes.
- **Fail**: one or more checks fail.

Report back in this shape:

```markdown
**Design review: Pass | Fail**

Scope: <whole design | listed files>

Findings:
- <file>: <failed check> — <suggested fix>

Notes (optional): <non-blocking observations>
```

List only failed checks under Findings. If a check cannot be judged without product-owner input, list it as a finding and mark it `needs clarification`. If the problem is in `vision.md` or the definition rather than the design, say so.
