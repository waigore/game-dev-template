# Demo style and assets

Every [gameplay demo](demos.md), engine or gameplay type, is a proof of concept for the game's style and its asset pipeline. It expresses the style in [`specs/aesthetics/`](../specs/aesthetics/aesthetics.md), and every asset it shows or plays comes through the pipeline in [`specs/assets/`](../specs/assets/assets.md).

## Before building

- The aesthetics hub and every style element in scope hold no TBD.
- The asset hub names its catalog manifest, asset root, and approval rule.
- Every asset kind the demo needs has a kind spec whose coverage rule, specification, recipe, and checks hold no TBD.
- Each recipe's tool role is realized by an Accepted ADR.

A missing piece is a blocking gap. It is resolved in `specs/` before the build, never as a demo assumption.

## Style

- Aesthetics element IDs (pillars, palette sets, form, surface, motion, interface style, sound) are in the demo's scope like design IDs, as included or excluded with a reason.
- Every included style element is visible or audible in the demo.

## Assets

- Every asset is made or imported with [`manage-asset`](../.agents/skills/manage-asset/SKILL.md), cataloged, and cited in the demo by asset ID.
- No ad hoc placeholder art or sound. Debug overlays are tooling, not assets.
- Every asset has a [`review-asset`](../.agents/skills/review-asset/SKILL.md) Pass for its current version. It may stay draft; approval waits for promotion.
- Assets live under the catalog's asset root, not in `demos/<slug>/`, so main code can use them once approved.

## Pipeline findings

The demo exercises the pipeline as much as the style. The README lists every problem met while producing its assets: a recipe that needed retries, a check that could not be run, a tool limit, a style element too vague to judge. Each finding is filed as a spec change (with `author-spec`) or a defect (with `create-project-defect`), and the README links it. "None" is a valid list when nothing went wrong.

## Verification

`verify-project-issue` runs `review-asset` on every asset the demo uses and checks the README's style and asset tables against the demo. A review Fail, an included style element not shown, or an asset not in the catalog fails verification.
