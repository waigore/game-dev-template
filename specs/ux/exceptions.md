# Exception States

Shared interface states for conditions that can arise on many screens. Screens apply these by ID. Each condition has one pattern, defined here. Rules: [`ux.md`](ux.md#rules-for-every-ux-spec).

Delete a row the game does not use, and mark that topic N/A in [`traceability.md`](traceability.md). Add a named row for a condition this list lacks.

## Exceptions

IDs: see [`ids.md`](ids.md). The mockup anchor for `EX.<name>` is `ex-<name>`.

| ID | When it appears | Actor sees | Actor can | Blocks the screen | Recovery |
|----|-----------------|------------|-----------|-------------------|----------|
| `EX.loading` | <!-- fill in: the condition, in design or session terms --> | <!-- fill in --> | <!-- fill in --> | <!-- yes / no --> | <!-- fill in: screen or state when it ends --> |
| `EX.empty` | <!-- fill in: there is nothing to show --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
| `EX.error` | <!-- fill in: a failure the actor can recover from --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
| `EX.confirm` | <!-- fill in: a destructive or hard-to-undo choice --> | <!-- fill in --> | <!-- fill in: confirm and cancel --> | <!-- fill in --> | <!-- fill in --> |
| `EX.interrupt` | <!-- fill in: play suspended or the session backgrounded. Link the design flow interruption. --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |
| `EX.save-failure` | <!-- fill in: a failed commit. When save durability Applies, link progression. --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in: the previous commit remains --> |
| `EX.unsupported-input` | <!-- fill in: an input this platform does not accept --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> | <!-- fill in --> |

## Experience intent

<!-- fill in: how these states should feel. An error names what failed and what the actor can do next. -->
