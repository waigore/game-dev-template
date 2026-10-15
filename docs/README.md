# `docs/`

Project and process documentation (labels, issues, skills, repo setup). Product/technical specifications live in [`specs/`](../specs/).

## Concise docs

Every file under `docs/` must stay under **500 words**. If content would exceed that, split into multiple focused files and link between them. CI enforces this for Markdown (`word-limit` in [Spec lint](spec-lint.md)); run `python3 .github/scripts/spec_lint.py` locally.

## Index

| Path | Covers |
|------|--------|
| [asset-tools.md](asset-tools.md) | Known asset tools: banned tools, touch-up options (Recraft), enabling their MCP servers |
| [demos.md](demos.md) | Gameplay demos under `demos/`: scope, what is relaxed, traceability, promotion |
| [demo-style-assets.md](demo-style-assets.md) | Demos as style and asset-pipeline proofs of concept: gate, assets, findings, verification |
| [github-repo-setup.md](github-repo-setup.md) | First-time GitHub workflow (protection, squash, auto-merge, labels) |
| [issues/](issues/) | Epic / Task / Defect contract and status workflow |
| [labels.md](labels.md) | Label catalog and sync |
| [pull-requests.md](pull-requests.md) | PR flow, branch names, body contract, auto-merge holds |
| [requirements/](requirements/README.md) | Unconfirmed requirement notes awaiting capture into specs (not specs) |
| [playtest/evidence/](playtest/evidence/) | AI-agent playtest evidence (story IDs, pass/fail, screenshots, notes, logs); requirements in `specs/playtest/` |
| [skills.md](skills.md) | Skill authoring and native wiring |
| [solid.md](solid.md) | SOLID principles + structure continuity for agents |
| [spec-lint.md](spec-lint.md) | CI checks for spec structure (rules line, templates, links, glossaries) |
