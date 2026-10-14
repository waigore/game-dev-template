# Authoring rules: asset catalog

Read this before editing `specs/assets/catalog.md`. Do not copy these rules into the spec.

Also read [assets.md](assets.md) and [ids.md](ids.md).

The catalog is the record of every produced asset. This spec defines the record. The manifest, at the path the hub names, holds it. Format and path are set by an Accepted Integration ADR.

## Asset IDs

- **Format**: `<kind>/<name>`, where `<kind>` is the kind spec's file name without extension and `<name>` is kebab-case, unique within the kind. Example: `character-sprites/player-run`.
- **Stability**: never rename or reuse an asset ID. An update keeps the ID and raises the version. A replacement with a different identity takes a new ID; the old one is deprecated with the new ID as its successor.
- Specs, code, and issues cite asset IDs, not file paths.

## Fields

Keep the skeleton rows: `F1`, `F2`, …. Add a row, with the next number, for any field the project needs. Columns: ID, field, when required (always, or by source type or state), and meaning.

The skeleton covers: asset ID, kind spec, coverage rules, serves (design, view, or UX IDs), state, version, files (relative to the asset root), source type, tool role and ADR, recipe (`AK-<name>.R<n>`), generation record (the prompt as run, seed, settings, and input asset and reference IDs), license (for third-party: source, license, attribution, and proof of purchase; for generated: the tool's terms per its ADR), review (verdict, date, reviewer, report link), successor, and deprecation reason.

## Integrity

Rules the catalog always meets, `I1`, `I2`, …: every file under the asset root belongs to one entry, and every entry's files exist; asset IDs are unique; every approved entry has a Pass review for its current version; every cited ID exists; main code uses no draft or deprecated asset. State how each rule is checked (an automated check, or `review-asset`).

## Splitting

If the file passes 500 words, move Fields to `catalog/fields.md`. Leave a summary and a link, and update `assets.md`.
