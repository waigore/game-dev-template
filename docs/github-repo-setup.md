# GitHub first-time repo setup

Apply once after creating a repository from this template (or cloning to a new remote). Requires **repo admin** access. Enable **Actions** if label sync should run via workflow.

Agents: use the `setup-github-repo` skill. Default is guide + verify only; do not change settings unless asked.

## 1. Merge settings

**Settings → General → Pull Requests**

- Enable **Allow squash merging** only.
- Disable **Allow merge commits** and **Allow rebase merging**.
- Enable **Allow auto-merge**. Same-repo, non-draft PRs then squash-merge once mergeable unless labeled `no-automerge` ([`automerge.yml`](../.github/workflows/automerge.yml)).

## 2. Protect `main`

**Settings → Branches → Add branch protection rule** (or a Ruleset targeting `main` with the same intent):

| Setting | Value |
|---------|--------|
| Branch name pattern | `main` |
| Require a pull request before merging | On |
| Required approving reviews | 0 (baseline; tighten later if needed) |
| Require status checks to pass | On; required checks: `Word limit` ([`word-limit.yml`](../.github/workflows/word-limit.yml)), `Spec lint` ([`spec-lint.yml`](../.github/workflows/spec-lint.yml)), and `PR hygiene` ([`pr-hygiene.yml`](../.github/workflows/pr-hygiene.yml)) |
| Allow force pushes | Off |
| Allow deletions | Off |
| Do not allow bypassing the above settings | On (includes administrators) |

Outcome: no direct pushes or force pushes to `main`; changes land via PR only; admins cannot bypass; PRs cannot merge (or auto-merge) until `Word limit`, `Spec lint`, and `PR hygiene` pass. A check only appears in the picker after it has run once (open any PR).

## 3. Default labels

If `type:epic`, `type:task`, and `type:defect` are missing, sync from [`.github/project-labels.yml`](../.github/project-labels.yml). Details: [`labels.md`](labels.md).

- Actions → **Sync labels** → **Run workflow**, or
- Local: `bash .github/scripts/sync-labels.sh` (needs `gh` and `yq`)

## 4. Verify (read-only)

Replace `OWNER/REPO` as needed (`gh repo view --json nameWithOwner -q .nameWithOwner`).

```bash
# Merge methods + auto-merge
gh api repos/OWNER/REPO --jq '{squash: .allow_squash_merge, merge: .allow_merge_commit, rebase: .allow_rebase_merge, auto_merge: .allow_auto_merge}'

# Branch protection (classic rules)
gh api repos/OWNER/REPO/branches/main/protection --jq '{enforce_admins: .enforce_admins.enabled, allow_force_pushes: .allow_force_pushes.enabled, pr_reviews: .required_pull_request_reviews, checks: .required_status_checks.contexts}'

# Labels
gh label list --repo OWNER/REPO
```

Expect: squash `true`; merge and rebase `false`; auto-merge `true`; protection present with `enforce_admins` true, force pushes false, and `checks` containing `Word limit`, `Spec lint`, and `PR hygiene`; the three `type:*` labels listed.

If protection uses **Rulesets** instead of classic branch protection, confirm the same constraints in **Settings → Rules → Rulesets** (UI) when the classic endpoint 404s.

## Related

- Labels: [`labels.md`](labels.md)
- Agent rules: [`../AGENTS.md`](../AGENTS.md) (branch protection, small PRs)
