# Stories: <!-- fill in: design spec name -->

<!-- Template: copy to stories/<design spec's relative path>, e.g. stories/features/movement.md, one file per design spec, and delete this line. -->

Player stories that prove one design spec behaves as designed. Rules: [`../stories.md`](../stories.md#rules-for-every-story). IDs: [`../ids.md`](../ids.md).

- **Design spec**: <!-- fill in: link -->
- **Spec key**: <!-- fill in: e.g. F-movement -->
- **Glossary terms**: <!-- fill in: links to ../glossary.md -->

## Coverage

Every element ID and name-referenced item the design spec defines (including designer tunables it owns), each with the scenarios that prove it per [`../story-coverage.md`](../story-coverage.md). Must agree with the scenarios' **Proves** lines.

| Element | Summary | Scenarios |
|---------|---------|-----------|
| <!-- fill in: e.g. R1, or CFG.MAX_HEALTH --> | <!-- fill in: a few words --> | <!-- fill in: e.g. PS1.1, PS1.2 --> |

## PS1: <!-- fill in: title -->

As a <!-- fill in: player, as described in the vision's audience -->, I <!-- fill in: verb or situation --> so that <!-- fill in: goal, from the design spec's purpose -->.

### PS1.1: <!-- fill in: scenario title, e.g. "Condition holds" -->

- **Proves**: <!-- fill in: element IDs; qualify other specs' IDs, e.g. R1, X2, END.L1 -->

```gherkin
Given <!-- fill in: phase, game-state fields and participants, with concrete values -->
  And <!-- fill in: configuration and difficulty in effect -->
When <!-- fill in: one player verb or game event -->
Then <!-- fill in: resulting state, with concrete values -->
  And <!-- fill in: what must stay unchanged -->
```

### PS1.2: <!-- fill in: scenario title, e.g. "Condition does not hold" -->

- **Proves**: <!-- fill in -->

```gherkin
Given <!-- fill in -->
When <!-- fill in -->
Then <!-- fill in -->
```

<!-- Add stories and scenarios until every row in the coverage table is proven. -->
