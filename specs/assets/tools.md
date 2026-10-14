# Asset Tools

Authoring rules: [`.agents/specs/rules/assets/tools.md`](../../.agents/specs/rules/assets/tools.md).

## Tool roles

| ID | Role | Source type | Kinds served | Required capabilities | Realized by |
|----|------|-------------|--------------|-----------------------|-------------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Access

| Role | Access | Run by | Cost or quota limit |
|------|--------|--------|---------------------|
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

Credentials never enter the repository.

## Constraints on ADR

Every role a recipe uses needs an Accepted Integration ADR that realizes all of its required capabilities. Until then the role is Pending and its recipes do not run. An ADR that changes a role reopens every recipe that uses it for review.
