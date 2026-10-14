# Project skills

Canonical skill bodies live here (one folder per skill). This catalog is the list agents should maintain — not a full inventory in `AGENTS.md`.

Native facades (Cursor / OpenCode / Grok) and authoring rules: [`docs/skills.md`](../../docs/skills.md).

## Catalog

| Skill | Purpose |
|-------|---------|
| [`ensure-project-setup`](ensure-project-setup/SKILL.md) | Check first-time setup is done; apply gaps via `setup-github-repo` |
| [`setup-github-repo`](setup-github-repo/SKILL.md) | First-time GitHub workflow (branch protection, squash-only, auto-merge, labels) |
| [`create-project-label`](create-project-label/SKILL.md) | Add a label to config + docs and sync to GitHub |
| [`create-project-epic`](create-project-epic/SKILL.md) | Create an Epic issue (`type:epic`) on GitHub |
| [`create-project-task`](create-project-task/SKILL.md) | Create a Task issue (`type:task`) with parent/blocked-by wiring |
| [`create-project-defect`](create-project-defect/SKILL.md) | Create a Defect issue (`type:defect`) with related/blocked-by wiring |
| [`enforce-task-workflow-status`](enforce-task-workflow-status/SKILL.md) | Gate or audit `status:*` labels for typed issues |
| [`review-project-issue`](review-project-issue/SKILL.md) | Review pass / fail / clarify → next status |
| [`refine-project-issue`](refine-project-issue/SKILL.md) | Refine issue body → pending-review |
| [`clarify-project-issue`](clarify-project-issue/SKILL.md) | Record PO clarification → review or refinement |
| [`implement-project-issue`](implement-project-issue/SKILL.md) | Implementation summary → pending-verification |
| [`verify-project-issue`](verify-project-issue/SKILL.md) | Independent verify pass / fail |
| [`accept-project-issue`](accept-project-issue/SKILL.md) | Accept / fail / clarify after verification |
| [`author-spec`](author-spec/SKILL.md) | Write or edit a spec from `.agents/specs/rules/`; do not copy the rules into the spec |
| [`capture-requirements`](capture-requirements/SKILL.md) | Interview for specs, high-level stage first; detail saved as notes; confirm, `author-spec`, open a `no-automerge` PR |
| [`review-spec`](review-spec/SKILL.md) | Review a spec doc or the whole spec set; report verdict to the requester |
| [`review-solid-code`](review-solid-code/SKILL.md) | Review code vs `docs/solid.md` (SOLID + continuity); Pass/Fail, read-only |
| [`audit-spec-applicability`](audit-spec-applicability/SKILL.md) | Audit Applies/N/A upstream grounds and downstream carry-outs; report for author-spec |
| [`audit-spec-terminology`](audit-spec-terminology/SKILL.md) | Audit glossary ownership and term usage (undefined, drift, synonyms, homonyms); report for author-spec |
| [`audit-spec-tbd`](audit-spec-tbd/SKILL.md) | Find TBDs (undecided aspects), propose grounded answers, confirm with the user, then author-spec |
| [`create-gameplay-demo`](create-gameplay-demo/SKILL.md) | Scope a demo aggressively, clarify blockers into specs, build it under `demos/` as a spec-traced reference artifact |
| [`promote-gameplay-demo`](promote-gameplay-demo/SKILL.md) | Reimplement demo behavior in main code: drift check, assumptions into specs, technical design, SOLID |
| [`sync-upstream-template`](sync-upstream-template/SKILL.md) | Merge upstream template changes downstream: baseline, per-file classify, confirm conflicts, one `no-automerge` sync PR |

When adding or renaming a skill: update this table, add facades per `docs/skills.md`, and keep the thin Skills pointer in [`AGENTS.md`](../../AGENTS.md) unchanged unless the path to this catalog moves.
