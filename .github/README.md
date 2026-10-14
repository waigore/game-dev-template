# `.github/`

GitHub configuration for this repository: labels, issue forms, and workflows.

## Contents

| Path | Covers |
|------|--------|
| [`project-labels.yml`](project-labels.yml) | Declarative repository labels (source of truth) |
| [`ISSUE_TEMPLATE/`](ISSUE_TEMPLATE/) | Epic / Task / Defect issue forms |
| [`pull_request_template.md`](pull_request_template.md) | PR body sections ([`docs/pull-requests.md`](../docs/pull-requests.md)) |
| [`workflows/sync-labels.yml`](workflows/sync-labels.yml) | Sync labels on push to `main` or `workflow_dispatch` |
| [`workflows/automerge.yml`](workflows/automerge.yml) | Squash auto-merge for all same-repo PRs; opt out with `no-automerge` |
| [`workflows/word-limit.yml`](workflows/word-limit.yml) | Required check: Markdown in `docs/` and `specs/` ≤ 500 words |
| [`workflows/pr-hygiene.yml`](workflows/pr-hygiene.yml) | Required check: PR title/body lint ([`docs/pull-requests.md`](../docs/pull-requests.md)) |
| [`workflows/spec-lint.yml`](workflows/spec-lint.yml) | Required check: structural spec rules ([`docs/spec-lint.md`](../docs/spec-lint.md)) |
| [`scripts/sync-labels.sh`](scripts/sync-labels.sh) | Local / CI label sync script |
| [`scripts/check-word-limit.sh`](scripts/check-word-limit.sh) | Local / CI word limit check (`wc -w` per file) |
| [`scripts/pr_hygiene.py`](scripts/pr_hygiene.py) | Local / CI PR hygiene lint (one function per rule); tests in [`scripts/tests/`](scripts/tests/) |
| [`scripts/spec_lint.py`](scripts/spec_lint.py) | Local / CI spec lint; tests in [`scripts/tests/`](scripts/tests/) |

Label catalog and sync docs: [`docs/labels.md`](../docs/labels.md). Issue contract: [`docs/issues/`](../docs/issues/). First-time remote workflow: [`docs/github-repo-setup.md`](../docs/github-repo-setup.md).
