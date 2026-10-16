# Authoring rules: asset pipeline glossary

Read this before editing `specs/assets/glossary.md` or a domain file split from it. Do not copy these rules into the spec.

Also read [assets.md](assets.md).

Shared language for asset pipeline specs. Each term is defined once here. Other specs use it exactly and link here.

Style terms stay in `specs/aesthetics/glossary.md`. Game, view, and UI terms stay in the design, view, and UX glossaries. Do not redefine them here.

The skeleton already defines Asset, Asset ID, Asset kind, Asset manifest, Aural identity, Build output, Catalog, Coverage rule, Engine resource, Entry file, Handle, Load group, Recipe, Review exemption, Style anchor, Style series, Tool role, and Touch-up. Keep those rows. Add a row for a term this project needs. Keep added rows alphabetical. One term per concept: no synonyms.

**Style anchor**: an approved catalog asset that seeds or maintains a kind’s style series (visual or sonic). **Style series**: the kind-level registry of medium, anchors, provider binding (`recraft_style_id` or `elevenlabs_binding`), prompt policy, and state that constrains generation. **Aural identity**: the three pillars for audio kinds — enforced ElevenLabs binding, master/negative `prompt_policy`, and aural review — parallel to visual identity.

Columns: term, a one-sentence definition, and where it is detailed (a link, or "here").

## Splitting

If the file passes 500 words, split added terms into `glossary/<domain>.md`. Keep `glossary.md` as the index, and update links.
