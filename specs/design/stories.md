# Player Stories

Concrete, testable behaviors of the game, written as Given/When/Then scenarios and traced to the [design element IDs](ids.md) they prove. Player stories are to game design what user stories are to UX, but they cover game logic and mechanics only. Rules: [`design.md`](design.md#rules-for-every-design-spec).

## Rules for every story

- **Game logic only**: no screens, menus, inputs, buttons, feedback, animation, or sound. These are not user stories.
- **Traced**: every scenario names the element IDs it proves. A scenario may not assert behavior that is absent from the design; if one is needed, change the design first.
- **Narrative**: each story opens with "As a <player>, I <verb or situation> so that <goal>", where the goal comes from the design spec's purpose.
- **Given**: the complete starting situation (phase, game-state fields, characters and entities present, configuration, and difficulty), so that two testers would set up the same situation.
- **When**: exactly one trigger, either a player verb from a character's actions or a game event defined in the design (e.g. a timer expires, an opponent acts). Scenario-walkthrough stories may chain When/Then pairs in step order.
- **Then**: the resulting game-state changes, phase transitions, or end conditions, with concrete values. Add "And … is unchanged" wherever an unintended change is plausible.
- **Falsifiable**: name game-state fields and configuration parameters, each followed by a concrete value, e.g. `health is MAX_HEALTH (3)`. Values match the defaults in [`configuration.md`](configuration.md) unless the Given sets them. Avoid subjective words such as "smoothly", "quickly", or "feels".
- **Shared language**: use glossary terms and character, entity, and field names exactly as they are defined.

## Coverage

Every element ID in a design spec is proven by at least one scenario in that spec's story file, and:

- Each conditional element (a rule, action, transition, or adjustment that applies only when something holds) has one scenario where the condition holds and one where it does not.
- Each numeric threshold has scenarios at the boundary and on each side of it.
- Each edge case and invariant has its own scenario.
- Each difficulty level or option that changes an element has a scenario under that level or option.

Sections without IDs (purpose, motivation, experience intent, and similar) are not proven by stories; they are judged during review and acceptance.

## Files

One story file per design spec that has element IDs, at the same relative path under [`stories/`](stories/): `features/movement.md` → `stories/features/movement.md`, `end-conditions.md` → `stories/end-conditions.md`. Copy [`stories/_template.md`](stories/_template.md).

A story that spans several specs lives in the file of the spec whose element it mainly proves; it cites the other specs' elements with qualified IDs.

## Index

- <!-- fill in: links to story files, grouped as in the design index -->

If this index pushes the file past 500 words, move it to `stories/index.md` and link it here.
