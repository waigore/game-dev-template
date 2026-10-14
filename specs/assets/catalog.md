# Asset Catalog

Authoring rules: [`.agents/specs/rules/assets/catalog.md`](../../.agents/specs/rules/assets/catalog.md).

Manifest and asset root: see **Catalog** in [`assets.md`](assets.md).

## Asset IDs

`<kind>/<name>`: the kind spec's file name, then a kebab-case name unique within the kind, such as `character-sprites/player-run`. Never renamed or reused. An update keeps the ID and raises the version. A replacement takes a new ID, and the old asset is deprecated with it as successor.

## Fields

| ID | Field | Required | Meaning |
|----|-------|----------|---------|
| `F1` | Asset ID | Always | Per **Asset IDs** |
| `F2` | Kind spec | Always | `AK-<name>` |
| `F3` | Coverage | Always | `V` IDs this asset satisfies |
| `F4` | Serves | Always | Design, view, or UX IDs it depicts or sounds for |
| `F5` | State | Always | draft, approved, or deprecated |
| `F6` | Version | Always | Integer, raised on every update |
| `F7` | Files | Always | Paths relative to the asset root |
| `F8` | Source type | Always | AI generation, procedural generation, or third-party |
| `F9` | Tool role | Generated | `TL.<n>` and its ADR ID |
| `F10` | Recipe | Generated | `AK-<name>.R<n>` |
| `F11` | Generation record | Generated | Prompt as run, seed, settings, input asset and `REF` IDs |
| `F12` | License | Always | Third-party: source, license, attribution, proof of purchase. Generated: the tool's terms per its ADR |
| `F13` | Review | Approved | Verdict, date, reviewer, report link, for the current version |
| `F14` | Successor | Deprecated, when replaced | Asset ID of the replacement |
| `F15` | Deprecation reason | Deprecated | Why it was retired |
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Integrity

| ID | Rule | How checked |
|----|------|-------------|
| `I1` | Every file under the asset root belongs to one entry, and every entry's files exist | <!-- fill in --> |
| `I2` | Asset IDs are unique | <!-- fill in --> |
| `I3` | Every approved entry has a Pass review for its current version | <!-- fill in --> |
| `I4` | Every cited ID exists | <!-- fill in --> |
| `I5` | Main code uses no draft or deprecated asset | <!-- fill in --> |
