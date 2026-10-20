---
name: suggest-code-refactors
description: |-
  Review implementation code for structure and technical debt and file the
  refactor epics and tasks that judgement selects, labeled refactor. A task
  may exceed one PR when a split would hide the structure. Thin orchestrator
  over audit-code-structure, create-project-epic, and create-project-task.
  Does not edit the repo. Filing needs no second confirmation.
  Use when the user asks for a structure review, refactor suggestions, or a
  technical-debt pass over the implementation tree or a named portion.

  Examples:
    - user: "Where should we refactor?" → whole tree except demos/, file the cut
    - user: "Suggest refactors in src/combat" → that portion, file the cut
    - user: "Audit structure, don't file" → audit-code-structure only
---

# Suggest code refactors

Thin orchestrator. Audit with [`audit-code-structure`](../audit-code-structure/SKILL.md). File with [`create-project-epic`](../create-project-epic/SKILL.md) and [`create-project-task`](../create-project-task/SKILL.md). Do not restate them. Do not call [`review-code`](../review-code/SKILL.md).

## Steps

1. Run the audit. If the user asked not to file, or there are no findings, return the report and stop.
2. Skip a finding an open typed issue already covers.
3. File the cut. Invoking this skill is the ask; do not ask for confirmation. Add the `refactor` label to every epic and task this run files (`gh issue edit <n> --add-label refactor`).
4. Report the audit, filed URLs, skips, and anything left unfiled.

## Cut

Judge the cut. Take the structural boundary from the audit, stale findings first. Keep one boundary in one task when splitting would hide the structure, even if that task is larger than one PR. Split only when the parts stand alone. Create an epic in this run only when several of those tasks share one outcome, or use a parent the user named. Do not attach to an unrelated epic. Leave a finding unfiled when it is not worth a task and does not fold into one already in the cut.

A `needs decision` finding is a task to record the decision, not a prescribed code shape. If the target changes structure [`specs/technical/`](../../../specs/technical/technical.md) already specifies, include that spec update. Set blocked-by when one refactor must land first. Map evidence and the proposed target into the required sections. Tasks only.

## Rules

- Do not edit the repository.
- Honor issue hierarchy depth.
