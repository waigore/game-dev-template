---
name: create-gameplay-demo
description: |-
  Scope and build a gameplay demo under demos/<slug>/: either a pure engine
  demo (core rules and feel, no UI) or a full gameplay demo with UI/UX. Scopes
  aggressively to the fewest spec elements that answer one demo question,
  clarifies blocking gaps with the user and writes the answers back to specs,
  then builds the demo as a reference artifact that cites its specs. Every
  demo expresses the aesthetics and uses only cataloged pipeline assets, as a
  proof of concept for both. Demo code is exempt from SOLID review but not
  from spec first.
  Use when the user asks for a demo, prototype, vertical slice, or proof of a
  mechanic built from the specs.

  Examples:
    - user: "Build a demo of the core loop" → scope, confirm, task, build engine demo
    - user: "Gameplay demo with menus and HUD for stage 1" → gameplay type, UX in scope
    - user: "Demo task #21 passed review, build it" → build phase only
    - user: "Promote the movement demo into the game" → use promote-gameplay-demo instead
---

# Create gameplay demo

Contract: [`docs/demos.md`](../../../docs/demos.md) and [`docs/demo-style-assets.md`](../../../docs/demo-style-assets.md). Demo README template: [`assets/demo-readme.md`](assets/demo-readme.md).

## Demo types

- **Engine**: proves rules, game state, feel, and camera in the chosen engine. No UI screens; a debug overlay is allowed. Reads design, view, aesthetics, and asset specs.
- **Gameplay**: a playable slice with the screens, navigation, and input it needs. Also reads UX specs.

Both types express the aesthetics and show only cataloged assets, agent-made or human-made. Neither uses uncataloged placeholder art or sound.

Default to **engine**. Pick **gameplay** only when the demo question is about UI, flow, or onboarding, or the user asks for it.

## Steps

### Scope

0. **Setup**: run [`ensure-project-setup`](../ensure-project-setup/SKILL.md) unless it already passed in this session.
1. **Gate**: the [high-level stage](../capture-requirements/SKILL.md#high-level-stage) is locked in, and the engine in `specs/definition/definition.md` is realized by an **Accepted** Engine ADR in `specs/adr/`. The aesthetics hub holds no TBD, and the asset hub names its catalog manifest, asset root, and approval rule. Otherwise stop, say what is missing, and offer `capture-requirements` or `audit-spec-tbd`.
2. **Load**: vision qualities; definition scope, objectives, platforms, depth; the design hub and the loops, features, and stages it indexes; the view hub; the aesthetics hub and the elements it indexes; the asset hub, `tools.md`, and the kind specs; for gameplay demos, the UX hub; Accepted ADRs. Skip `specs/adr/archive/` and requirement notes.
3. **Scope aggressively**:
   - Write the **demo question**: the one thing the demo must prove (e.g. "is the core loop fun for 2 minutes?").
   - Include only the spec elements, as qualified IDs (`F-movement.R3`), that the question needs. Prefer one loop, the features its steps need, and one stage or test arena.
   - Include the aesthetics elements those elements are seen or heard through (pillars, palette sets, form, motion, sound; interface style for gameplay demos).
   - List the **assets** the demo needs: for each, its source (agent-made with `manage-asset`, or supplied by a person with `register-asset`; ask the user which), its kind spec as the hub names it (the handle prefix), its coverage rule (`AK-<name>.V<n>`) when agent-made, and whether it is already cataloged with a `review-asset` Pass or a review exemption.
   - List everything else as excluded with a one-line reason. When in doubt, exclude.
4. **Find gaps** in the included elements: `TBD`, `<!-- fill in -->`, missing specs, contradictions.
   - **Blocking**: the demo cannot encode it without a product decision (a rule, an objective, a win or lose condition, what the player can do, or a conflict between specs). Every failure of the [style and asset gate](../../../docs/demo-style-assets.md#before-building) is blocking too: a style element the demo needs, or, for an agent-made asset, its kind spec, coverage rule, recipe, or Accepted tool ADR.
   - **Non-blocking**: tuning values, copy, layout details. These become demo **assumptions**. Art and sound are never assumptions.
5. **Propose and confirm** in one summary: question, type, included IDs (design, view, UX, and aesthetics), assets to produce or reuse, excluded areas, blockers, assumptions. For each blocker, offer grounded answers the way `audit-spec-tbd` does, plus "drop it from scope". Ask using a structured multiple-choice question when available. Wait for confirmation.
6. **Resolve blockers**: write each confirmed answer with [`author-spec`](../author-spec/SKILL.md), or run `capture-requirements` for a missing spec. A missing tool ADR is authored and must be Accepted before the build. Open a spec PR per [Spec PRs](../../../docs/pull-requests.md#spec-prs). Never encode an unconfirmed answer.
7. **Track**: use the given task, or create one with `create-project-task` whose body carries the confirmed scope, including the asset list. Building waits until the task is `status:pending-implementation`; if it is not, stop and report the next workflow step.

### Build

8. **Branch** `task/<n>-demo-<slug>` and create `demos/<slug>/`. Copy the template to `demos/<slug>/README.md` and fill it.
9. **Produce assets** under the demo task for each listed asset not yet cataloged: run [`manage-asset`](../manage-asset/SKILL.md) for agent-made ones, and [`register-asset`](../register-asset/SKILL.md) for ones a person supplies. Every asset needs a `review-asset` Pass or a review exemption granted by a person; it may stay draft. Record each problem met (retries, unrunnable checks, tool limits, vague style elements) as a **pipeline finding**, and file it as a spec change with `author-spec` or a defect with `create-project-defect`. If the assets would push the demo PR past ~30 files, land them first in their own PR.
10. **Implement** only the included elements and listed assumptions, loading assets from the catalog's asset root by asset ID. At each place a rule is encoded, add a comment citing its qualified ID, or `assumption A<n>`. Do not touch code outside `demos/<slug>/`.
11. **Smoke run**: launch the demo and record how to run it and what you saw, including that each included style element shows. Playtest per `specs/playtest/` only if the user asks.
12. **PR**: open per [`docs/pull-requests.md`](../../../docs/pull-requests.md). **Authority** lists the included IDs, kind specs, and Accepted ADRs. **Test plan** lists the `review-asset` verdicts and the exemptions. If a spec PR from step 6 is unmerged, add `no-automerge`. Then run `implement-project-issue`.

## Rules

- Spec first still applies: every behavior traces to an included ID or a listed assumption. Assumptions never decide a blocking gap.
- Every asset the demo shows or plays is cataloged with a `review-asset` Pass or a review exemption that a person granted; an agent never grants one. No uncataloged placeholder art or sound; debug overlays are tooling, not assets.
- `docs/solid.md` and structure continuity do not apply inside `demos/`; readable, working code is enough.
- Main code never imports from `demos/`. Reusing demo behavior in the main code is a separate task run with [`promote-gameplay-demo`](../promote-gameplay-demo/SKILL.md).
- Requirement notes are not authority; do not build from them.
- Do not grow scope during the build. A new need, including a new asset, goes back through steps 4–6.
