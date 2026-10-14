# `docs/`

Project and process documentation (labels, issues, skills, repo setup). Product/technical specifications live in [`specs/`](../specs/).

## Concise docs

Every file under `docs/` must stay under **500 words**. If content would exceed that, split into multiple focused files and link between them. CI enforces this for Markdown ([`word-limit.yml`](../.github/workflows/word-limit.yml)); run `bash .github/scripts/check-word-limit.sh` locally.

## Index

| Path | Covers |
|------|--------|
| [github-repo-setup.md](github-repo-setup.md) | First-time GitHub workflow (protection, squash, auto-merge, labels) |
| [issues/](issues/) | Epic / Task / Defect contract and status workflow |
| [labels.md](labels.md) | Label catalog and sync |
| [pull-requests.md](pull-requests.md) | PR flow, branch names, body contract, auto-merge holds |
| [playtest/evidence/](playtest/evidence/) | AI-agent playtest evidence (story IDs, pass/fail, screenshots, notes, logs); requirements in `specs/playtest/` |
| [skills.md](skills.md) | Skill authoring and native wiring |
| [solid.md](solid.md) | SOLID principles + structure continuity for agents |
| [spec-lint.md](spec-lint.md) | CI checks for spec structure (rules line, templates, links, glossaries) |
