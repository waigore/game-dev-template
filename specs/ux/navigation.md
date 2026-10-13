# Navigation

The inventory of screens and the transitions between them. Each screen is defined in [`screens/`](screens/). Journeys in [`journeys/`](journeys/) walk this map and add no screens. Rules: [`ux.md`](ux.md#rules-for-every-ux-spec).

## Screens

| Screen | Job | Actors | Spec | Mockup |
|--------|-----|--------|------|--------|
| <!-- fill in: UI- key --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: link --> | <!-- fill in: link to mockups/screens/ --> |

Every screen in this table has a spec and a mockup. Every spec under `screens/` is listed here.

## Transitions

IDs: see [`ids.md`](ids.md). A transition is one control or one system UI event.

| ID | From | Via | To | Conditions | Actors |
|----|------|-----|----|------------|--------|
| <!-- T1 --> | <!-- UI- key --> | <!-- qualified control ID, or a system UI event --> | <!-- UI- key --> | <!-- fill in --> | <!-- fill in --> |

Every screen is reachable from **N1**, and has at least one exit, unless it ends the session.

## Entry and resume

- **N1**: <!-- fill in: the screen a new session opens on, and which actor -->
- **N2**: <!-- fill in: the screen an interrupted session resumes on. Link the design flow interruption this follows. -->

## Splitting this document

If this file passes 500 words, move the screen table to `navigation/screens.md` and the transition table to `navigation/transitions.md`. Leave a one-line summary and links here.
