# User Stories

Concrete, testable interface behavior, written as Given/When/Then scenarios and traced to the [UX element IDs](ids.md) they prove. User stories cover screens, controls, navigation, visibility, and exceptions. Player stories in [`../design/stories.md`](../design/stories.md) cover game logic. Rules: [`ux.md`](ux.md#rules-for-every-ux-spec).

## Rules for every story

- **Interface only**: assert screens, regions, controls, navigation, and exception UI. Cite a design ID for a game fact on screen. Leave the rule's outcome in the player story.
- **Traced**: every scenario names the UX element IDs it proves. A scenario asserts only behavior the UX spec states. Add missing interface behavior to the UX spec first. Add a missing game rule to the design first.
- **Narrative**: each story opens with "As <actor>, I <operate the interface> so that <goal>". The goal comes from that actor or journey.
- **Given**: the actor, the screen, the UI state, and the design facts already true, with concrete values, so two testers set up the same situation.
- **When**: exactly one trigger. A trigger is one control activation, one bound input, or one system UI event the UX spec defines. Journey stories may chain When/Then pairs in step order.
- **Then**: the resulting screen, visible regions, enabled or disabled controls, or exception, with concrete values. Add "And … is unchanged" where an unintended change is plausible.
- **Falsifiable**: name element IDs and visible strings. Avoid subjective words such as "smoothly", "quickly", or "feels".
- **Shared language**: use glossary terms and the defined screen, control, and action names.

## Coverage

Every element ID and named item in a UX spec is proven by scenarios in that spec's story file, as [`story-coverage.md`](story-coverage.md) requires. Sections without IDs are judged during review and acceptance.

## Files

One story file per UX spec that has element IDs, at the same relative path under [`stories/`](stories/): `screens/main-menu.md` → `stories/screens/main-menu.md`, and `navigation.md` → `stories/navigation.md`. Copy [`stories/_template.md`](stories/_template.md).

A story that spans several specs lives in the file of the spec whose element it mainly proves, and cites the others with qualified IDs.

## Index

- <!-- fill in: links to story files, grouped as in the UX index -->

If this index pushes the file past 500 words, move it to `stories/index.md` and link it here.
