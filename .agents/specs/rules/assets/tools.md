# Authoring rules: asset tools

Read this before editing `specs/assets/tools.md` or a file split from it. Do not copy these rules into the spec.

Also read [assets.md](assets.md).

The capabilities the pipeline needs, as tool roles. Product terms only. The Accepted Integration ADR that realizes a role names the product, its version, and the service. Recipes cite roles, never products.

## Tool roles

One row per role: `TL.1`, `TL.2`, …. Columns: ID, role, source type, kinds served (link kind specs), required capabilities, and realized by.

- **Role**: what the tool does, such as sprite generation, 3D model generation, texture generation, animation, sound effect generation, music generation, voice, procedural generation, post-processing (palette quantization, trimming, packing, loudness normalization), validation, or a third-party catalog.
- **Required capabilities**: what the recipes depend on, such as palette lock, transparent background, fixed canvas size, the same character across directions, reference-image input, a seed for repeatable output, batch runs, seamless loops, or license terms that allow commercial use. Each traces to an aesthetics element, a kind spec requirement, or a definition constraint.
- **Realized by**: an Accepted ADR ID, or "Pending — needs Integration ADR".

## Access

One row per role: how an agent reaches it (an agent tool, a command run in the repository, or a manual step by a person), who may run it (agent or person), and its cost or quota limit from the definition's constraints, or "None". Credentials never enter the repository; name only where a person configures them.

## Constraints on ADR

State that every role a recipe uses needs an Accepted Integration ADR that realizes all of its required capabilities, and that an ADR change to a role reopens the recipes that use it for review.

## Splitting

If the file passes 500 words, move Access to `tools-access.md`. Leave a summary and a link, and update `assets.md`.
