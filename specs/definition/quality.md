# Quality Expectations

Measurable non-functional requirements. Linked from [`definition.md`](definition.md). Stay consistent with [`../vision.md`](../vision.md) and with the platforms and constraints in the definition. Review instructions: [`.agents/specs/definition-review.md`](../../.agents/specs/definition-review.md).

Record observable outcomes. Architecture, engines, data formats, and APIs belong in their own specs.

## Categories

Each category is **Applies** or **N/A — reason**. An N/A reason cites the vision or the supported platforms. An Applies row has a target, the platforms it covers, and how it is checked. An N/A row uses "—" for those three cells. Add a row when one category has more than one target.

- **Performance**: frame rate or frame time during play, including a bound on hitches.
- **Load time / latency**: time until playable, stage or mode transitions, and any response delay outside the frame budget.
- **Reliability**: crash-free play for a stated length, and where play resumes after a failure.
- **Save durability**: committed progress survives quit, crash, and upgrades in a stated version range; a failed write leaves the previous commit intact.
- **Accessibility**: who can perceive and operate play — distinguishable channels, adjustable timing or assists, text and audio scale.
- **Localization**: which locales ship, which player-facing content is translated, and a bound on text growth.

| Category | Applicability | Target | Platforms | How checked |
|----------|---------------|--------|-----------|-------------|
| Performance | <!-- Applies, or N/A — reason --> | <!-- fill in: e.g. 60 fps, hitch under 50 ms, over 10 minutes --> | <!-- fill in: e.g. primary --> | <!-- fill in: e.g. profiler, 10-minute session --> |
| Load time / latency | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
| Reliability | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
| Save durability | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
| Accessibility | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
| Localization | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

When a category Applies, record design consequences outside this file. Accessibility and localization: [`../design/experience.md`](../design/experience.md). Rule-changing assists: [`../design/configuration.md`](../design/configuration.md). Save durability: [`../design/progression.md`](../design/progression.md). Performance, load time, and reliability stay here.

## Splitting this document

If this file passes 500 words, move the longest category to `specs/definition/quality/<category>.md`. Leave a one-line summary and a link in the table, and add the new file to [`specs/README.md`](../README.md).
