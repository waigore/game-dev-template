# Project skills

Canonical skill bodies live here (one folder per skill). This catalog is the list agents should maintain — not a full inventory in `AGENTS.md`.

Native facades (Cursor / OpenCode / Grok) and authoring rules: [`docs/skills.md`](../../docs/skills.md).

## Catalog

| Skill | Purpose |
|-------|---------|
| [`setup-github-repo`](setup-github-repo/SKILL.md) | First-time GitHub workflow (branch protection, squash-only, auto-merge, labels) |
| [`create-project-label`](create-project-label/SKILL.md) | Add a label to config + docs and sync to GitHub |
| [`create-project-epic`](create-project-epic/SKILL.md) | Create an Epic issue (`type:epic`) on GitHub |
| [`create-project-task`](create-project-task/SKILL.md) | Create a Task issue (`type:task`) with parent/blocked-by wiring |
| [`create-project-defect`](create-project-defect/SKILL.md) | Create a Defect issue (`type:defect`) with related/blocked-by wiring |

When adding or renaming a skill: update this table, add facades per `docs/skills.md`, and keep the thin Skills pointer in [`AGENTS.md`](../../AGENTS.md) unchanged unless the path to this catalog moves.
