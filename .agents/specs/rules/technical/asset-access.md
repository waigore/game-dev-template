# Authoring rules: asset access

Read this before editing `specs/technical/_templates/asset-access.md` or `specs/technical/asset-access.md`. Do not copy these rules into the spec.

Also read [technical.md](technical.md), [ids.md](ids.md), and [`../assets/catalog.md`](../assets/catalog.md).

How the running game turns an asset ID into a loaded engine resource, what the engine builds from cataloged assets, and when groups of assets load and unload. The asset pipeline (`specs/assets/`) owns what each asset is and where its files live; this file owns how code reaches them.

Required whenever the asset hub's Asset kinds table has an Applies row and main code loads assets; otherwise optional. Copy `_templates/asset-access.md` to `asset-access.md`; do not fill the template in place. Cite the Accepted Integration ADR that sets the asset root and manifest format, and the Engine ADR.

## Header

- **Serves**, **Informed by**, **ADRs**: as in [components.md](components.md).

## Sections

- **Resolution**: `R1`, `R2`, …. How an asset ID becomes an engine resource. Cover at least: the manifest (an asset ID to engine path map generated from the catalog, never hand-edited; its location, its format per the Integration ADR, and when it is regenerated); the resolver (the one component that reads the manifest, cited by `CMP-` ID); and what happens on an unknown, draft, or deprecated asset ID. The main-code manifest lists only approved entries. Code passes asset IDs to the resolver and never hard-codes an asset path.
- **Engine resources**: `E1`, `E2`, …. Files authored in the engine's own formats that use cataloged assets, such as animation sets, prefabs, materials, scenes, and animation controllers. Columns: resource class, where it lives (a module from `modules.md`, outside the asset root), the asset IDs or kinds it uses, and how it stays in step with the manifest when the engine format stores a path (generated from the manifest, or checked against it). These are technical data, not catalog entries. Write "None — reason" when the engine needs none.
- **Build outputs**: `O1`, `O2`, …. Files the engine or build tooling generates from cataloged assets, such as atlases, import caches, and bundles. Columns: output, generator (cite the ADR), inputs (asset IDs, kinds, or load groups), location outside the asset root, and whether it is committed or rebuilt. Never cataloged, never hand-edited. Write "None — reason" when nothing is generated.
- **Load groups**: `G1`, `G2`, …. Columns: group, members (asset IDs, kind specs, or coverage rules such as `AK-character-sprites.V2`), load point, unload point, and owning component. Load and unload points cite a design, view, or UX element or a technical sequence. Every asset main code uses belongs to at least one group, or the section states the default (such as "load on first use, never unload") and why it fits the load-time and memory targets in `specs/definition/quality.md`.
- **Diagram**: required when load groups overlap or follow a dense flow. Mermaid or link under `diagrams/`.

Define manifest, resolver, engine resource, build output, and load group in `glossary.md` when first used.
