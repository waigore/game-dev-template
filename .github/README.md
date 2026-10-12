# `.github/`

GitHub configuration for this repository: labels, issue forms, and workflows.

## Contents

| Path | Covers |
|------|--------|
| [`project-labels.yml`](project-labels.yml) | Declarative repository labels (source of truth) |
| [`ISSUE_TEMPLATE/`](ISSUE_TEMPLATE/) | Epic / Task / Defect issue forms |
| [`workflows/sync-labels.yml`](workflows/sync-labels.yml) | Sync labels on push to `main` or `workflow_dispatch` |
| [`workflows/automerge.yml`](workflows/automerge.yml) | Squash auto-merge for same-repo PRs labeled `automerge` |
| [`scripts/sync-labels.sh`](scripts/sync-labels.sh) | Local / CI label sync script |

Label catalog and sync docs: [`docs/labels.md`](../docs/labels.md). Issue contract: [`docs/issues/`](../docs/issues/). First-time remote workflow: [`docs/github-repo-setup.md`](../docs/github-repo-setup.md).
