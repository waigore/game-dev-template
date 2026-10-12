# AGENTS.md

Agent entrypoint for this repo. Keep this file short; put detail in `docs/`, `specs/`, and `.agents/`.

## Project

- **Purpose**: <!-- fill in: what this game/project is -->
- **Language / engine**: <!-- fill in: e.g. GDScript/Godot, C#/Unity, Dart/Flame -->
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
| `automerge` | PR label: squash-merge automatically once mergeable |

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
- <!-- fill in: top-level dirs (e.g. src/, assets/, tests/) + their README.md -->

## Rules to live by

- **Branch protection**: `main` is protected; changes land via PR only. First-time remote setup: [`docs/github-repo-setup.md`](docs/github-repo-setup.md) (`setup-github-repo` skill).
- **Small PRs**: prefer focused, testable changes; keep PRs under ~30 files — split if larger.
- **Spec first**: if it is not in `specs/`, it must not be in the code.
- **Concise docs/specs**: every file under `docs/` and `specs/` stays under **500 words**; split and link if longer. Details: [`docs/README.md`](docs/README.md), [`specs/README.md`](specs/README.md).

---

**Maintaining this file:** When forking or starting a project from this template, fill in every `<!-- fill in -->` with real project details. Keep each section to a few lines; link out to `docs/`, `specs/`, or `.agents/` for anything longer.
