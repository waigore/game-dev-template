# Authoring rules: asset catalog

Read this before editing `specs/assets/catalog.md`. Do not copy these rules into the spec.

Also read [assets.md](assets.md) and [ids.md](ids.md).

The catalog is the record of every produced asset. This spec defines the record. The manifest, at the path the hub names, holds it. Format and path are set by an Accepted Integration ADR.

## Asset IDs

Every asset has two names. One scheme for every asset, whatever its source type or the skill that cataloged it, in demos and main code alike.

- **Asset ID**: an RFC 9562 UUID, version 7, in lowercase canonical form. Example: `0192f3a4-7c1e-7b2a-9d4e-5f6a7b8c9d0e`. Generate it with `python3 .github/scripts/new_asset_id.py`; never type, copy, or adapt one. It is the asset's identity: never changed, never reused, including on promotion.
- **Handle**: `<kind>/<name>`, where `<kind>` is the kind spec's file name without extension, as the hub's Asset kinds table names it (written or planned), and `<name>` is kebab-case. Example: `character-sprites/player-run`. A readable label for people and file paths. Unique across all entries, deprecated included. Before assigning one, confirm it is unused in the manifest on `main` and in the catalog changes of every open PR; on a clash, choose another name. A handle may be renamed; its asset ID stays.
- **Citing**: code, catalog cross-references (successor, input assets), and issues cite the asset ID. Prose, reviews, and READMEs may add the handle beside it for readability. Never cite file paths.
- **Versions**: an update keeps the asset ID and raises the version. A replacement with a different identity takes a new asset ID; the old one is deprecated with the new ID as its successor.

## Fields

Keep the skeleton rows: `F1`, `F2`, …. Add a row, with the next number, for any field the project needs. Columns: ID, field, when required (always, or by source type or state), and meaning.

The skeleton covers: asset ID, handle, kind spec (always; may be planned), coverage rules (always, except a person-supplied asset used only by demos), serves (design, view, or UX IDs), state, version, files (relative to the asset root), source type (AI generation, procedural generation, third-party, or human-made), tool role and ADR and recipe (`AK-<name>.R<n>`) when an agent generated it, generation record (the prompt as run, seed, settings, and input asset and reference IDs; for a person-supplied generated asset, the tool and what the person can supply), license (for third-party: source, license, attribution, and proof of purchase; for generated: the tool's terms; for human-made: the rights the author grants), review (verdict, date, reviewer, report link), successor, deprecation reason, author or supplier (person-supplied), and review exemption (who granted it, date, and reason).

## Integrity

Rules the catalog always meets, `I1`, `I2`, …: every file under the asset root belongs to one entry, and every entry's files exist; asset IDs are valid version 7 UUIDs, unique, and never reused; handles are unique, and every handle's `<kind>` is a kind spec named in the hub; every approved entry has a Pass review for its current version or a review exemption; every cited ID exists (a planned kind spec named in the hub counts); main code uses no draft or deprecated asset; every exemption names the person who granted it. State how each rule is checked (an automated check, or `review-asset`).

## Splitting

If the file passes 500 words, move Fields to `catalog/fields.md`. Leave a summary and a link, and update `assets.md`.
