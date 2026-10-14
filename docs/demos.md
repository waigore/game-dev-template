# Gameplay demos

A demo is a small, playable build that proves one thing about the game. It lives apart from the main code and is a **reference artifact**: it shows how the specs play, and records the design decisions it encodes. Build one with the [`create-gameplay-demo`](../.agents/skills/create-gameplay-demo/SKILL.md) skill.

## Where

One folder per demo: `demos/<slug>/`, holding the code and a `README.md` copied from the [demo README template](../.agents/skills/create-gameplay-demo/assets/demo-readme.md). Demos land through PRs like any other task.

## Types

| Type | Proves | Reads |
|------|--------|-------|
| Engine | Rules, game state, feel, camera; no UI | Design, view, ADRs |
| Gameplay | A playable slice with its screens and input | Design, view, UX, ADRs |

## Before building

- The high-level stage (vision, definition, quality) is locked in.
- The Engine ADR is Accepted.
- Every blocking gap in scope is decided by the user and written to `specs/`.

## What is relaxed

- [SOLID](solid.md) and structure continuity do not apply. `review-solid-code` skips `demos/`.
- Unit tests are optional.
- Playtesting per `specs/playtest/` is optional, on request.

## What is not relaxed

- **Spec first**: every behavior traces to an included spec element or a listed assumption.
- **Traceability**: the demo README lists included and excluded spec elements, the decisions encoded (each citing a spec element), and the assumptions made. Code comments cite the spec element or assumption where a rule is encoded.
- **Assumptions** cover only non-blocking gaps (tuning, placeholder art, audio, copy). They are not decisions and do not authorize main code.

## Verification

`verify-project-issue` checks a demo against its task's scope and its README: every included element is shown, every decision cites a spec element that exists, and the run instructions work. No SOLID review.

## Promotion

Main code never imports from `demos/`. To reuse demo code, open a separate task that moves it into the main tree. That task:

1. resolves every assumption it carries into `specs/` first;
2. covers the code in the technical design where required;
3. passes `review-solid-code` and the normal test bar.

The demo folder stays as it was, as the reference.
