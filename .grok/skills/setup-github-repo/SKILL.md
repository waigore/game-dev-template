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

# Setup GitHub repo (facade)

Canonical instructions: [`.agents/skills/setup-github-repo/SKILL.md`](../../../.agents/skills/setup-github-repo/SKILL.md).

Read that file and its `references/` as needed, then run the workflow there. Do not invent a parallel process.
