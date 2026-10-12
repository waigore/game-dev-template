# Element IDs

Stable IDs for the design elements that define behavior, so [player stories](stories.md), issues, and other specs can reference them exactly. Rules: [`design.md`](design.md#rules-for-every-design-spec).

## Format

- **Spec key**: the prefix from the table below plus the file name without extension, e.g. `features/movement.md` → `F-movement`. Global specs use fixed keys.
- **Element ID**: section letter plus number, unique within its spec, e.g. `R3`. Use it bare inside the same spec; elsewhere, qualify it with the spec key, e.g. `F-movement.R3`.
- **Story IDs**: `PS<n>` for a story and `PS<n>.<m>` for its scenarios, qualified by the key of the design spec they prove, e.g. `F-movement.PS2.1`.

## Stability

- Never renumber or reuse an ID. New elements take the next number after the highest ever used in that section.
- When an element is removed, delete it, leave the gap, and update every reference to it.
- When an element's meaning changes, keep its ID and update every story that proves it.
- Where order matters (priority, sequence), list order is authoritative, not ID number.

## Keys and identified sections

| Spec | Key | Sections and their ID letters |
|------|-----|-------------------------------|
| [`characters/`](characters/) | `C-<name>` | Actions and abilities `A`, States `S`, Behavior `B`, Interactions `I` |
| [`entities/`](entities/) | `E-<name>` | Lifecycle and states `S`, Interactions `I` |
| [`loops/`](loops/) | `L-<name>` | Steps `K` |
| [`features/`](features/) | `F-<name>` | Rules `R`, Interactions with other features `I`, Edge cases `X`, Difficulty and configuration effects `D` |
| [`flows/`](flows/) | `FL-<name>` | Transitions `T`, Entry and exit `N`, Interruptions `U` |
| [`stages/`](stages/) | `ST-<name>` | Objectives `O`, Stage rules `R`, Entry and exit `N` |
| [`scenarios/`](scenarios/) | `SC-<name>` | Walkthrough steps `W<walkthrough>.<step>`, e.g. `W2.3` |
| [`sub-games/`](sub-games/) | `SG-<name>` | Entry and exit `N`, Rules `R`, End conditions and rewards `O` |
| [`game-state.md`](game-state.md) | `GS` | Field invariants by field name, e.g. `GS.health`; Global invariants `V`; Randomness and determinism `Q` |
| [`configuration.md`](configuration.md) | `CFG` | Modes and Game options by name, e.g. `CFG.permadeath`; Dependencies and restrictions `K` |
| [`difficulty.md`](difficulty.md) | `DIF` | Rule adjustments `R`, Dynamic adjustment `Y`, Changing difficulty `C` |
| [`progression.md`](progression.md) | `PRG` | Progression axes `A`, Unlocks `U`, Persistence `P`, Committing progress `M`, Failure consequences `F` |
| [`end-conditions.md`](end-conditions.md) | `END` | Conditions by their ID, e.g. `END.L1`; Precedence `P` |

Sections not listed (purpose, motivation, layout, experience intent, and similar) carry no IDs: they explain or motivate behavior but do not define it, so player stories do not prove them.
