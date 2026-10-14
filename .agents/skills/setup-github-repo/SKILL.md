---
name: setup-github-repo
description: |-
  Guide first-time GitHub workflow setup for a repo from this template: squash-only
  merges, auto-merge, main branch protection (no admin bypass), and default labels.
  Use when initializing a new remote, after forking the template, or when the user
  asks to set up branch protection / PR-only main / auto-merge.
  Use proactively when AGENTS.md rules assume protection but the remote is not configured yet.

  Examples:
  - user: "Set up GitHub workflow for this new repo" → verify gaps, walk UI checklist
  - user: "Is main protected correctly?" → read-only gh checks, report pass/fail
  - user: "Apply the setup for me" → mutate only after explicit ask; prefer gh/API where possible
  - user: "Sync default labels if missing" → confirm, then sync-labels.sh or workflow_dispatch
---

# Setup GitHub repo

First-time GitHub workflow configuration for repositories using this template.

**Contract:** [`docs/github-repo-setup.md`](../../../docs/github-repo-setup.md). Do not invent parallel settings; follow that checklist.

## Inputs

| Field | Required | Notes |
|-------|----------|-------|
| Target repo | no | Default: current `gh` remote (`gh repo view`) |
| `--apply` / "fix it" | no | Only then mutate settings via `gh`/API; default is guide + verify |

## Steps

1. **Read** [`docs/github-repo-setup.md`](../../../docs/github-repo-setup.md).
2. **Detect** repo: `gh repo view --json nameWithOwner,url -q .nameWithOwner` (fail clearly if not authenticated or no remote).
3. **Verify** current state (read-only) using the doc’s `gh` commands:
   - Merge methods: squash only; merge commit and rebase off
   - Auto-merge enabled
   - `main` protected: PR required, force pushes off, **enforce admins / no bypass**, required status checks `Spec lint` and `PR hygiene`
   - Labels: every label in `.github/project-labels.yml` present (the doc's label command prints nothing)
4. **Report** a short pass/fail checklist of gaps.
5. **Guide** the user through Settings UI for each failing item (paths in the doc). Re-verify after each change when possible.
6. **Labels**: if missing, offer sync (`bash .github/scripts/sync-labels.sh` or Actions → Sync labels). Run sync **only** with user confirmation.
7. **Mutate** via `gh`/API **only** if the user explicitly asked to apply/fix settings (running `ensure-project-setup` counts). Prefer API for merge methods, auto-merge, classic branch protection, and label sync. Protect `main` with its required checks before enabling auto-merge. If a step is UI-only or the API rejects (e.g. rulesets-only org), say so and keep guiding the UI.
8. **Final report**: pass/fail per item; link the doc for future runs.

## Rules

- Default: **do not** change repository settings.
- Never enable admin bypass or allow force pushes to `main`.
- Do not require approving reviews unless the user asks (baseline is none).
- The baseline required status checks are `Spec lint` and `PR hygiene`; add others only if the user asks.
- Do not delete unrelated labels or weaken existing stricter protection without confirmation.
- Keep guidance aligned with `docs/github-repo-setup.md` and [`docs/labels.md`](../../../docs/labels.md).

## Related

- Doc: `docs/github-repo-setup.md`
- Orchestrator: [`ensure-project-setup`](../ensure-project-setup/SKILL.md) (check, then apply gaps)
- Labels: `docs/labels.md`, `.github/scripts/sync-labels.sh`
- AGENTS.md: branch protection under Rules to live by
