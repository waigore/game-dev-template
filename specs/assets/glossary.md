# Asset Pipeline Glossary

Authoring rules: [`.agents/specs/rules/assets/glossary.md`](../../.agents/specs/rules/assets/glossary.md).

## Terms

| Term | Definition | Detailed in |
|------|------------|-------------|
| Asset | One cataloged piece of art, animation, interface art, font, or sound the game uses. | [`catalog.md`](catalog.md) |
| Asset ID | The stable `<kind>/<name>` name of an asset. | [`catalog.md`](catalog.md) |
| Asset kind | A class of assets that share coverage rules, recipes, and checks. | [`kinds/`](kinds/) |
| Catalog | The manifest that records every asset, its state, source, and history. | [`catalog.md`](catalog.md) |
| Coverage rule | A rule in a kind spec that says which assets must exist. | [`kinds/`](kinds/) |
| Recipe | The repeatable way to make an asset: inputs, prompt, settings, and post-processing. | [`kinds/`](kinds/) |
| Review exemption | A person's recorded decision that one asset skips `review-asset`. | [`assets.md`](assets.md) |
| Style anchor | An approved asset used as an input so new assets match it. | [`procedures.md`](procedures.md) |
| Tool role | A capability the pipeline needs, realized by an Accepted ADR. | [`tools.md`](tools.md) |
| <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
