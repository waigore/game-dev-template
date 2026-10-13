# Reviewing `specs/ux/`

Instructions for agents reviewing the UX specs ([`specs/ux/ux.md`](../../specs/ux/ux.md) and every file under [`specs/ux/`](../../specs/ux/)). Authoring rules for each file are in [`rules/README.md`](rules/README.md). Follow [`alignment.md`](alignment.md). The spec links that file and does not contain the rules. Read [`specs/vision.md`](../../specs/vision.md), [`specs/definition/definition.md`](../../specs/definition/definition.md), [`specs/definition/quality.md`](../../specs/definition/quality.md), and [`specs/design/design.md`](../../specs/design/design.md) first. When a UX file cites a design element, read that design spec. A review may cover the whole UX or named files. Cross-spec checks always consider the whole UX. Skip `_template.md` and `_template.html`. Run every check, then report a verdict.

## Aligned

Same sections and required content as the rules file for each spec in scope. File-level requirements in [`alignment.md`](alignment.md) hold.

### Completeness

- [ ] No `<!-- fill in -->` placeholders remain in Markdown or in filled mockups. Unused template rows and sections are deleted.
- [ ] Each Markdown file links its authoring-rules file from [`rules/README.md`](rules/README.md). Those rules are not pasted into the spec. The authoring-rules link is not interface content. HTML mockups do not carry a rules link; their rules are [screen](rules/ux/screen-mockup.md) and [journey](rules/ux/journey-mockup.md) mockup rules.
- [ ] The index in `ux.md`, and the alignment and topic coverage tables in `traceability.md`, are filled in.
- [ ] Every topic in the coverage table is covered, or marked N/A with a reason grounded in the definition or the design.
- [ ] Every actor, screen, and journey file is listed in the `ux.md` index, and every indexed file exists.
- [ ] Every screen spec is a row in `navigation.md` and has a mockup. Every navigation row has a screen spec and a mockup.
- [ ] Every journey has a click-through mockup. `presentation.md` names the design system and the template for each surface.

### Interface detail

- [ ] Each actor states who they are, their goals, what they can operate, and what they cannot operate.
- [ ] Each screen has one job. Regions, controls, states, and copy are concrete enough that two readers would operate the screen the same way.
- [ ] Each journey names its actor, goal, entry, exit, steps, and branches.
- [ ] Copy strings are literal. The mockup shows those strings.
- [ ] Each exception states when it appears, what the actor sees, what the actor can do, whether it blocks the screen, and how it recovers.
- [ ] A screen applies a shared exception by ID. It does not define a second pattern for the same condition.

### Shared language

- [ ] Each UI term is defined once in `glossary.md` and used as defined. Game terms stay in the design glossary.
- [ ] Each actor is defined once. Game characters are linked, not redefined.
- [ ] UI actions are defined once in `controls.md`. Screens refer to them by ID.
- [ ] Cited design element IDs exist.

### Internal consistency

- [ ] Every screen is reachable from `NAV.N1` and has an exit, unless it ends the session.
- [ ] Each navigation transition matches the result of the control or system event it names.
- [ ] Journey steps and branches name screens, controls, and exception states that exist. A journey defines none of them.
- [ ] Each UI action used by a screen has a binding on every platform the definition marks primary. Platforms match the definition.
- [ ] Actor constraints agree with the controls those actors can and cannot activate.
- [ ] `IN.F1` agrees with the order of each screen's controls table.

### Element IDs

- [ ] Every section listed in [`ids.md`](rules/ux/ids.md) gives each element an ID in the prescribed form, unique within its spec.
- [ ] Qualified IDs cited anywhere exist.
- [ ] A screen state's mockup anchor is `state-default` or `ex-<name>` for `EX.<name>`.

### User stories

Rules: [`stories.md`](rules/ux/stories.md) and [`story.md`](rules/ux/story.md).

- [ ] Every UX spec with element IDs has a story file at the mirrored path under `stories/`, listed in the `stories.md` index. No story file lacks a UX spec.
- [ ] Every element ID and named item is proven by at least one scenario, and each coverage table agrees with its scenarios' **Proves** lines.
- [ ] Every requirement in [`story-coverage.md`](rules/ux/story-coverage.md) is met for each element kind.
- [ ] Each scenario has a complete Given, one When (a control, a bound input, or a UX-defined system event; chained only in journey stories), and a Then with concrete values.
- [ ] Each scenario is falsifiable. An implementation that breaks the element it proves would fail it.
- [ ] No scenario asserts a game-rule outcome. Visibility scenarios state what a region shows, and cite the design for whether the player can know it.

### Alignment

- [ ] `traceability.md` maps every essential quality, in-scope item, and surfaced design spec that this interface serves.
- [ ] Nothing serves only a vision non-goal or a definition out-of-scope item.
- [ ] Every spec states what it serves.
- [ ] When accessibility Applies, screen and presentation specs state how the interface meets that target.
- [ ] When localization Applies, each screen lists the copy that varies by locale, and the mockup matches it.
- [ ] When save durability Applies, `EX.save-failure` states what the actor sees and that the previous commit remains.

### Mockups

- [ ] Each filled screen mockup keeps `data-screen`, `data-region`, `data-control`, and `data-state` for the elements in its spec.
- [ ] Each journey mockup links every step and branch in that journey, including exception anchors.
- [ ] Visual treatment follows `presentation.md`: Open Design tokens and craft for the bound system, `mobile-app` or `web-prototype` for meta screens, and the game-screen skeleton for play screens.
- [ ] `presentation.md` is the binding. A root `.open-design.json` does not replace it.

### Scope boundaries

- [ ] No game rules. Design verbs appear only as citations of what a control asks the game to perform.
- [ ] No technical design: no engines, frameworks, code, data formats, or APIs.
- [ ] Actors are people who operate the interface.

### Format

- [ ] Each Markdown file is under 500 words ([`specs/README.md`](../../specs/README.md)). HTML under `specs/ux/mockups/` is exempt. Oversized Markdown is split by logical unit and linked.

## Imposed

- [ ] No two UX specs contradict each other, or contradict the design fact they cite.

## Verdict

- **Pass**: every check passes.
- **Fail**: one or more checks fail.

Report back in this shape:

```markdown
**UX review: Pass | Fail**

Scope: <whole UX | listed files>

Findings:
- <file>: aligned | imposed — <failed check> — <suggested fix>

Notes (optional): <non-blocking observations>
```

List only failed checks under Findings. Tag a check that cannot be judged without product-owner input with `needs clarification` as well. If the problem is in the vision, the definition, or the design, say so. Refinement follows [`alignment.md`](alignment.md).
