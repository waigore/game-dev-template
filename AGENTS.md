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

Synced by `.github/workflows/sync-labels.yml` (push to `main` when label config changes, or `workflow_dispatch`). Add labels with the `create-project-label` skill.

## Issues

Epic / Task / Defect forms live in `.github/ISSUE_TEMPLATE/`. Agents create issues with the matching `create-project-*` skill (sub-issues + native blocked-by). Contract: [`docs/issues/`](docs/issues/).

## Skills

Canonical skill bodies live in `.agents/skills/` (one folder per skill). Do not treat any agent’s native path as the source of truth.

**Wiring (required on every new skill):** also add thin facades that point at the shared body — same `name` / `description`, no duplicated workflow:

| Agent | Facade path |
|-------|-------------|
| Cursor | `.cursor/skills/<skill-name>/SKILL.md` |
| OpenCode | `.opencode/skill/<skill-name>/SKILL.md` |
| Grok | `.grok/skills/<skill-name>/SKILL.md` |

Details and facade template: [`docs/skills.md`](docs/skills.md).

- `create-project-label` — add a label to config + docs and sync to GitHub
- `create-project-epic` — create an Epic issue (`type:epic`) on GitHub
- `create-project-task` — create a Task issue (`type:task`) with parent/blocked-by wiring
- `create-project-defect` — create a Defect issue (`type:defect`) with related/blocked-by wiring

## Project structure

```
.agents/     # canonical skills and agentic docs
.cursor/     # Cursor skill facades → .agents/skills/
.opencode/   # OpenCode skill facades → .agents/skills/
.grok/       # Grok skill facades → .agents/skills/
docs/        # process and project documentation
specs/       # product and technical specifications
.github/     # workflows, ISSUE_TEMPLATE/, project-labels.yml, sync scripts
<!-- fill in: src/, assets/, tests/, etc. -->
```

## Key files

- `AGENTS.md` — this file (agent orientation)
- `specs/` — product/technical specs; load before implementing ([`specs/README.md`](specs/README.md))
- `docs/` — process and project docs ([`docs/README.md`](docs/README.md))
- `docs/labels.md` — label catalog and sync instructions
- `docs/issues/` — issue contract (requirements, body shapes, hierarchy)
- `docs/skills.md` — skill authoring and native wiring rules
- `.github/project-labels.yml` — declarative repository labels
- `.github/ISSUE_TEMPLATE/` — Epic / Task / Defect issue forms
- `.agents/` — skills and deeper agent guidance
- <!-- fill in: entrypoint, config, CI, main scene/project file -->

## Rules to live by

- **Branch protection**: `main` is protected; changes land via PR only.
- **Small PRs**: prefer focused, testable changes; keep PRs under ~30 files — split if larger.
- **Spec first**: if it is not in `specs/`, it must not be in the code.
- **Concise docs/specs**: every file under `docs/` and `specs/` stays under **500 words**; split and link if longer. Details: [`docs/README.md`](docs/README.md), [`specs/README.md`](specs/README.md).

---

**Maintaining this file:** When forking or starting a project from this template, fill in every `<!-- fill in -->` with real project details. Keep each section to a few lines; link out to `docs/`, `specs/`, or `.agents/` for anything longer.
