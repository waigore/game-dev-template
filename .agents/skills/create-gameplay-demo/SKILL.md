---
name: create-gameplay-demo
description: |-
  Scope and build a gameplay demo under demos/<slug>/: either a pure engine
  demo (core rules and feel, no UI) or a full gameplay demo with UI/UX. Scopes
  aggressively to the fewest spec elements that answer one demo question,
  clarifies blocking gaps with the user and writes the answers back to specs,
  then builds the demo as a reference artifact that cites its specs. Demo code
  is exempt from SOLID review but not from spec first.
  Use when the user asks for a demo, prototype, vertical slice, or proof of a
  mechanic built from the specs.

  Examples:
    - user: "Build a demo of the core loop" → scope, confirm, task, build engine demo
    - user: "Gameplay demo with menus and HUD for stage 1" → gameplay type, UX in scope
    - user: "Demo task #21 passed review, build it" → build phase only
    - user: "Promote the movement demo into the game" → promotion task, not this build
---

# Create gameplay demo

Contract: [`docs/demos.md`](../../../docs/demos.md). Demo README template: [`assets/demo-readme.md`](assets/demo-readme.md).

## Demo types

- **Engine**: proves rules, game state, feel, and camera in the chosen engine. Debug overlay or no UI, placeholder visuals. Reads design and view specs.
- **Gameplay**: a playable slice with the screens, navigation, and input it needs. Also reads UX specs.

Default to **engine**. Pick **gameplay** only when the demo question is about UI, flow, or onboarding, or the user asks for it.

## Steps

### Scope

0. **Setup**: run [`ensure-project-setup`](../ensure-project-setup/SKILL.md) unless it already passed in this session.
1. **Gate**: the [high-level stage](../capture-requirements/SKILL.md#high-level-stage) is locked in, and the engine in `specs/definition/definition.md` is realized by an **Accepted** Engine ADR in `specs/adr/`. Otherwise stop, say what is missing, and offer `capture-requirements` or `audit-spec-tbd`.
2. **Load**: vision qualities; definition scope, objectives, platforms, depth; the design hub and the loops, features, and stages it indexes; the view hub; for gameplay demos, the UX hub; Accepted ADRs. Skip `specs/adr/archive/` and requirement notes.
3. **Scope aggressively**:
   - Write the **demo question**: the one thing the demo must prove (e.g. "is the core loop fun for 2 minutes?").
   - Include only the spec elements, as qualified IDs (`F-movement.R3`), that the question needs. Prefer one loop, the features its steps need, and one stage or test arena.
   - List everything else as excluded with a one-line reason. When in doubt, exclude.
4. **Find gaps** in the included elements: `TBD`, `<!-- fill in -->`, missing specs, contradictions.
   - **Blocking**: the demo cannot encode it without a product decision (a rule, an objective, a win or lose condition, what the player can do, or a conflict between specs).
   - **Non-blocking**: tuning values, placeholder art, audio, copy, layout details. These become demo **assumptions**.
5. **Propose and confirm** in one summary: question, type, included IDs, excluded areas, blockers, assumptions. For each blocker, offer grounded answers the way `audit-spec-tbd` does, plus "drop it from scope". Ask using a structured multiple-choice question when available. Wait for confirmation.
6. **Resolve blockers**: write each confirmed answer with [`author-spec`](../author-spec/SKILL.md), or run `capture-requirements` for a missing spec. Open a spec PR per [Spec PRs](../../../docs/pull-requests.md#spec-prs). Never encode an unconfirmed answer.
7. **Track**: use the given task, or create one with `create-project-task` whose body carries the confirmed scope. Building waits until the task is `status:pending-implementation`; if it is not, stop and report the next workflow step.

### Build

8. **Branch** `task/<n>-demo-<slug>` and create `demos/<slug>/`. Copy the template to `demos/<slug>/README.md` and fill it.
9. **Implement** only the included elements and listed assumptions. At each place a rule is encoded, add a comment citing its qualified ID, or `assumption A<n>`. Do not touch code outside `demos/<slug>/`.
10. **Smoke run**: launch the demo and record how to run it and what you saw. Playtest per `specs/playtest/` only if the user asks.
11. **PR**: open per [`docs/pull-requests.md`](../../../docs/pull-requests.md). **Authority** lists the included IDs and Accepted ADRs. If a spec PR from step 6 is unmerged, add `no-automerge`. Then run `implement-project-issue`.

## Rules

- Spec first still applies: every behavior traces to an included ID or a listed assumption. Assumptions never decide a blocking gap.
- `docs/solid.md` and structure continuity do not apply inside `demos/`; readable, working code is enough.
- Main code never imports from `demos/`. Moving demo code into the main tree is a separate promotion task per [`docs/demos.md`](../../../docs/demos.md#promotion).
- Requirement notes are not authority; do not build from them.
- Do not grow scope during the build. A new need goes back through steps 4–6.
