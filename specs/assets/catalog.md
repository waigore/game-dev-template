# Asset Catalog

Authoring rules: [`.agents/specs/rules/assets/catalog.md`](../../.agents/specs/rules/assets/catalog.md).

Manifest and asset root: see **Catalog** in [`assets.md`](assets.md).

## Asset IDs

`<kind>/<name>`: a kind spec file name from the hub's Asset kinds table (written or planned), then a kebab-case name unique within the kind, such as `character-sprites/player-run`. Every asset uses this one form, whatever its source type or the skill that cataloged it, in demos and main code alike. Never renamed or reused, including on promotion. An update keeps the ID and raises the version. A replacement takes a new ID, and the old asset is deprecated with it as successor.

Before assigning an ID, confirm it is unused in the manifest on `main`, deprecated entries included, and in the catalog changes of every open PR. On a clash, choose another name; never rename an existing asset.

## Fields

Moved to [`catalog/fields.md`](catalog/fields.md).

## Integrity

| ID | Rule | How checked |
|----|------|-------------|
| `I1` | Every file under the asset root belongs to one entry, and every entry's files exist | <!-- fill in --> |
| `I2` | Asset IDs are unique, never reused, and prefixed by a kind spec the hub names | <!-- fill in --> |
| `I3` | Every approved entry has a Pass review for its current version, or a review exemption | <!-- fill in --> |
| `I4` | Every cited ID exists; a planned kind spec named in the hub counts | <!-- fill in --> |
| `I5` | Main code uses no draft or deprecated asset | <!-- fill in --> |
| `I6` | Every review exemption names the person who granted it | <!-- fill in --> |
