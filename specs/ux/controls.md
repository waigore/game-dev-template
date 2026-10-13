# Controls

How input on each supported platform activates a UI action. Platforms and primary inputs come from [`../definition/definition.md`](../definition/definition.md). Screens name these actions on their controls. Rules: [`ux.md`](ux.md#rules-for-every-ux-spec).

A binding activates a control. The screen spec states what that control does, including any design verb it asks the game to perform.

## UI actions

Delete actions this game does not use. Add a row for an action it needs. IDs: see [`ids.md`](ids.md).

| ID | Action | Meaning |
|----|--------|---------|
| `IN.confirm` | Confirm | Accept the focused choice. |
| `IN.cancel` | Cancel | Dismiss without accepting. |
| `IN.back` | Back | Return to the previous screen. |
| `IN.pause` | Pause | Suspend play and open the pause screen. |
| `IN.point` | Point | Move the pointer or the focus. |
| `IN.activate` | Activate | Invoke the focused control. |

## Bindings

One row per input that activates an action, for each platform the definition lists.

| ID | Platform | Input | UI action |
|----|----------|-------|-----------|
| <!-- B1 --> | <!-- fill in: from the definition --> | <!-- fill in: e.g. keyboard Enter, pointer click, gamepad South --> | <!-- fill in: IN.confirm --> |

## Focus

- **F1**: On each screen, keyboard and gamepad focus follow that screen's controls table from top to bottom. Pointer activation hits the control under the pointer. An unavailable control shows that it is unavailable and does not activate.

## Splitting this document

If this file passes 500 words, move the bindings table to `controls/bindings.md`, leave a summary and a link here, and update [`ux.md`](ux.md).
