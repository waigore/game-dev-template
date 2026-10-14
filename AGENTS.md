# AGENTS.md

Agent entrypoint for this repo. Keep this file short; put detail in `docs/`, `specs/`, and `.agents/`.

## Project

- **Purpose**: <!-- fill in: what this game/project is -->
- **Language / engine**: <!-- fill in from specs/definition/definition.md (Engine) and its Engine ADR: e.g. GDScript/Godot, C#/Unity, Dart/Flame -->
- **Frameworks / tools**: <!-- fill in: key libs, build tooling, CI -->

## Quick start commands

- **Setup**: <!-- fill in: install deps / clone assets / env -->
- **Run**: <!-- fill in: launch editor or game -->
- **Test**: <!-- fill in: unit/integration test command -->
- **Build / export**: <!-- fill in: build and package/export targets -->

## Labels

Issue labels for categorization and agent orchestration. Source of truth: `.github/project-labels.yml`. Details: [`docs/labels.md`](docs/labels.md).

| Label | Meaning |
|-------|---------|
| `type:epic` | Broad orchestration epic |
| `type:task` | Concrete unit of agent work |
| `type:defect` | Bug/problem with any deliverable (code, game, spec, etc.) |
| `status:*` | Workflow state (see [`docs/issues/workflow.md`](docs/issues/workflow.md)) |
| `no-automerge` | PR label: opt out of automatic squash-merge (on by default for all PRs) |

Synced by `.github/workflows/sync-labels.yml` (push to `main` when label config changes, or `workflow_dispatch`). Add labels with the `create-project-label` skill.

## Issues

Epic / Task / Defect forms live in `.github/ISSUE_TEMPLATE/`. Agents create issues with the matching `create-project-*` skill (sub-issues + native blocked-by). Contract: [`docs/issues/`](docs/issues/). Status workflow: [`docs/issues/workflow.md`](docs/issues/workflow.md).

## Skills

Canonical skills and catalog: [`.agents/`](.agents/) ([README](.agents/README.md)). Authoring and native facades: [`docs/skills.md`](docs/skills.md).

## Key files and directories

- `AGENTS.md` — this file (agent orientation)
- [`.agents/`](.agents/) — ([README](.agents/README.md))
- [`.cursor/`](.cursor/) — ([README](.cursor/README.md))
- [`.opencode/`](.opencode/) — ([README](.opencode/README.md))
- [`.grok/`](.grok/) — ([README](.grok/README.md))
- [`.github/`](.github/) — ([README](.github/README.md))
- [`docs/`](docs/) — ([README](docs/README.md))
- [`specs/`](specs/) — ([README](specs/README.md))
- [`demos/`](demos/) — gameplay demos, kept apart from main code ([README](demos/README.md))
- <!-- fill in: top-level dirs (e.g. src/, assets/, tests/) + their README.md -->

## Rules to live by

- **First-time setup**: in a new repo from this template, run `ensure-project-setup` before any other work or PR ([`docs/github-repo-setup.md`](docs/github-repo-setup.md)).
- **Template updates**: pull changes from the upstream template with `sync-upstream-template`; never merge upstream by hand.
- **High-level requirements first**: `capture-requirements` locks in vision, definition, and quality before any downstream spec is captured; earlier design-level detail waits in [`docs/requirements/`](docs/requirements/README.md) (notes, not specs).
- **Branch protection**: `main` is protected; changes land via PR only.
- **Always open a PR**: when a change is done, branch (`<type>/<issue#>-<slug>`), push, and open a PR using the template; link issues with `Refs #n`, never `Closes`. PRs auto-merge on green; use draft or `no-automerge` to hold. Contract: [`docs/pull-requests.md`](docs/pull-requests.md).
- **Small PRs**: prefer focused, testable changes; keep PRs under ~30 files — split if larger.
- **Spec first**: if it is not in `specs/`, it must not be in the code. Undecided aspects are marked `TBD — <question>` in any spec ([rule](.agents/specs/rules/README.md#undecided-aspects-tbd)) and are not coded; resolve them with `audit-spec-tbd`.
- **Spec authoring**: before writing or editing a file under `specs/`, read its rules file from [`.agents/specs/rules/README.md`](.agents/specs/rules/README.md) (`author-spec` skill). Do not copy those rules into the spec. CI `Spec lint` checks the structural rules ([`docs/spec-lint.md`](docs/spec-lint.md)). When applying a failed spec review, follow [`.agents/specs/alignment.md`](.agents/specs/alignment.md).
- **Spec depth**: `specs/definition/definition.md` sets `prototype`, `small`, or `full`, which scales story coverage, mockups, and diagrams per [`.agents/specs/rules/depth.md`](.agents/specs/rules/depth.md).
- **Spec review**: review a spec with the `review-spec` skill, using the checklist linked from [`specs/README.md`](specs/README.md) and [`.agents/specs/alignment.md`](.agents/specs/alignment.md).
- **Architecture decisions**: engine, framework, library, storage, integration, and game-architecture choices are ADRs in [`specs/adr/`](specs/adr/adr.md). The engine itself is chosen in [`specs/definition/definition.md`](specs/definition/definition.md); its Engine ADR realizes that choice. Only Accepted ADRs authorize code. Do not read `specs/adr/archive/` unless explicitly asked.
- **Playtesting**: AI-agent playtests against design and UX per [`specs/playtest/`](specs/playtest/playtest.md); evidence under [`docs/playtest/evidence/`](docs/playtest/evidence/). Required at acceptance only when deliverables change playable behavior.
- **Aesthetics and assets**: the game's style (medium, pillars, palette, form, motion, interface and sound style) lives in [`specs/aesthetics/`](specs/aesthetics/aesthetics.md), downstream of definition, quality, design, and view. Asset kinds, tool roles, procedures, and the catalog live in [`specs/assets/`](specs/assets/assets.md); generation tools are Integration ADRs. Agent generation is optional. Make or change assets with `manage-asset`; catalog ones a person made, generated, or bought with `register-asset`; review them with `review-asset`. Only a person may exempt an asset from review, one at a time, recorded in the catalog. Every asset ID is `<kind-spec>/<name>`, checked for collisions before assignment, and never changes.
- **Technical design**: code and data shape (layers, modules, components, contracts, schemata, sequences) live in [`specs/technical/`](specs/technical/technical.md), downstream of definition, design, view, UX, and Accepted ADRs.
- **Concise docs/specs**: every file under `docs/` and `specs/` stays under **500 words**; split and link if longer. CI enforces it for Markdown (`Spec lint` `word-limit` check). Details: [`docs/README.md`](docs/README.md), [`specs/README.md`](specs/README.md).
- **SOLID code**: follow [`docs/solid.md`](docs/solid.md). Review with `review-solid-code` (also run from `verify-project-issue` when a PR has code changes).
- **Gameplay demos**: build with `create-gameplay-demo` under `demos/<slug>/`. They are exempt from SOLID but still spec first and spec-traced, and main code never imports them. Every demo is also a proof of concept for the style and the asset pipeline: it expresses `specs/aesthetics/` and uses only cataloged assets, each reviewed or exempted by a person ([`docs/demo-style-assets.md`](docs/demo-style-assets.md)). To reuse demo behavior, use `promote-gameplay-demo` ([`docs/demos.md`](docs/demos.md)).

---

**Maintaining this file:** When forking or starting a project from this template, fill in every `<!-- fill in -->` with real project details once the specs they come from exist (purpose from the vision, engine from the definition). Keep each section to a few lines; link out to `docs/`, `specs/`, or `.agents/` for anything longer.
