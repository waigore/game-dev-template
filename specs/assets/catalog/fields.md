# Asset Catalog Fields

Authoring rules: [`.agents/specs/rules/assets/catalog.md`](../../../.agents/specs/rules/assets/catalog.md).

Part of [`catalog.md`](../catalog.md).

## Fields

| ID | Field | Required | Meaning |
|----|-------|----------|---------|
| `F1` | Asset ID | Always | UUID version 7, per **Asset IDs** in [`catalog.md`](../catalog.md) |
| `F2` | Kind spec | Always | `AK-<name>`; may be planned |
| `F3` | Coverage | Unless demo-only and person-supplied | `V` IDs this asset satisfies |
| `F4` | Serves | Always | Design, view, or UX IDs it depicts or sounds for |
| `F5` | State | Always | draft, approved, or deprecated |
| `F6` | Version | Always | Integer, raised on every update |
| `F7` | Files | Always | Paths relative to the asset root |
| `F8` | Source type | Always | AI generation, procedural generation, third-party, or human-made |
| `F9` | Tool role | Agent-generated | `TL.<n>` and its ADR ID |
| `F10` | Recipe | Agent-generated | `AK-<name>.R<n>` |
| `F11` | Generation record | Generated | Prompt as run, seed, settings, input asset and `REF` IDs. Person-supplied: the tool, and whatever of these the person can supply |
| `F12` | License | Always | Third-party: source, license, attribution, proof of purchase. Generated: the tool's terms. Human-made: rights the author grants |
| `F13` | Review | Approved, unless exempt | Verdict, date, reviewer, report link, for the current version |
| `F14` | Successor | Deprecated, when replaced | Asset ID (UUID) of the replacement |
| `F15` | Deprecation reason | Deprecated | Why it was retired |
| `F16` | Supplier | Person-supplied | The person who made or supplied it |
| `F17` | Review exemption | Exempt | The person who granted it, date, and reason |
| `F18` | Handle | Always | `<kind>/<name>`, per **Asset IDs** in [`catalog.md`](../catalog.md) |
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
