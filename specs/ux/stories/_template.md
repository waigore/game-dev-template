# Stories: <!-- fill in: UX spec name -->

<!-- Template: copy to stories/<UX spec's relative path>, e.g. stories/screens/main-menu.md, one file per UX spec, and delete this line. -->

User stories that prove one UX spec behaves as specified. Rules: [`../stories.md`](../stories.md#rules-for-every-story). IDs: [`../ids.md`](../ids.md).

- **UX spec**: <!-- fill in: link -->
- **Spec key**: <!-- fill in: e.g. UI-main-menu -->
- **Glossary terms**: <!-- fill in: links to ../glossary.md -->

## Coverage

Every element ID and named item the UX spec defines, with the scenarios that prove it per [`../story-coverage.md`](../story-coverage.md). The table agrees with each scenario's **Proves** line.

| Element | Summary | Scenarios |
|---------|---------|-----------|
| <!-- fill in: e.g. C1, or EX.loading --> | <!-- fill in: a few words --> | <!-- fill in: e.g. US1.1, US1.2 --> |

## US1: <!-- fill in: title -->

As <!-- fill in: actor -->, I <!-- fill in: operate the interface --> so that <!-- fill in: goal -->.

### US1.1: <!-- fill in: scenario title -->

- **Proves**: <!-- fill in: element IDs. Qualify other specs' IDs. -->

```gherkin
Given <!-- fill in: actor, screen, UI state, and design facts already true, with concrete values -->
When <!-- fill in: one control, bound input, or system UI event -->
Then <!-- fill in: resulting screen, visibility, controls, or exception -->
  And <!-- fill in: what must stay unchanged -->
```

### US1.2: <!-- fill in: scenario title -->

- **Proves**: <!-- fill in -->

```gherkin
Given <!-- fill in -->
When <!-- fill in -->
Then <!-- fill in -->
```

<!-- Add stories and scenarios until every row in the coverage table is proven. -->
