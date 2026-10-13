# Authoring rules: view-story index

Read this before editing `specs/view/stories.md`. Do not copy these rules into the spec.

Also read [view.md](view.md), [ids.md](ids.md), and [story-coverage.md](story-coverage.md). A single story file follows [story.md](story.md).

View stories are concrete, testable behavior of space, camera, projection, physical feel, perception, sound placement, and haptics, written as Given/When/Then and traced to the view element IDs they prove. Player stories under `specs/design/stories.md` cover game logic. User stories under `specs/ux/stories.md` cover the interface.

## Rules for every story

- **View only**: assert positions, extents, camera position and orientation, what lies inside the frame, visible extent, depth order, motion over time, where a sound is heard, and haptic output. Cite a design ID for the game fact involved. Leave the rule's outcome in the player story.
- **Traced**: every scenario names the view element IDs it proves. A scenario asserts only behavior the view spec states. Add missing behavior to the view spec first. Add a missing game rule to the design first.
- **Narrative**: each story opens with "As a \<player\>, I \<see, hear, feel, or move\> so that \<goal\>". The goal comes from the spec's purpose or experience intent.
- **Given**: the camera in use, the platform and aspect ratio, the positions in world units of the objects involved, the facing, the settings and comfort options in effect, and the design facts already true, so two testers set up the same situation.
- **When**: exactly one trigger: a player verb from the design, a camera action (`CC.<name>`), elapsed time, or a design or view event. Transition stories may chain When/Then pairs in time order.
- **Then**: concrete, measurable results: positions in units, angles in degrees, durations in seconds, fractions of the frame, which objects are inside or outside the frame, which side a sound comes from and its level, and haptic intensity and duration. Add "And … is unchanged" where an unintended change is plausible.
- **Falsifiable**: do not use subjective words such as "smoothly", "natural", or "feels". State a settle time, a bound, or a tolerance instead. An implementation that breaks the element would fail the scenario.
- **Shared language**: use glossary terms and the defined camera, action, and setting names.

## Coverage

Every element ID and named item in a view spec is proven by scenarios in that spec's story file, as [story-coverage.md](story-coverage.md) requires. The coverage table agrees with the scenarios' **Proves** lines. Sections without IDs are judged during review and acceptance.

## Files

One story file per view spec that has element IDs, at the same relative path under `specs/view/stories/`. `cameras/follow.md` → `stories/cameras/follow.md`. `physics.md` → `stories/physics.md`. Copy `stories/_template.md`.

A story that spans several specs lives in the file of the spec whose element it mainly proves, and cites the others with qualified IDs.

`stories.md` is the index of those files, grouped as in the view index. If the index pushes the file past 500 words, move it to `stories/index.md` and leave a link.

Every indexed story file exists, and every story file has a view spec.
