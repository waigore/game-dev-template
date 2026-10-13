# UX Element IDs

Stable IDs for UX elements that define interface behavior, so [user stories](stories.md) and other specs can reference them exactly. Rules: [`ux.md`](ux.md#rules-for-every-ux-spec). Design IDs stay in [`../design/ids.md`](../design/ids.md). Cite them, and do not reuse their letters for a different meaning.

## Format

- **Spec key**: the prefix from the table below plus the file name without extension, e.g. `screens/main-menu.md` → `UI-main-menu`. Global specs use fixed keys.
- **Element ID**: section letter plus number, unique within its spec, e.g. `C2`. Use it bare inside the same spec. Elsewhere, qualify it, e.g. `UI-main-menu.C2`.
- **Named elements**: exceptions and UI actions use the key plus the name, e.g. `EX.loading`, `IN.confirm`.
- **Story IDs**: `US<n>` for a story and `US<n>.<m>` for its scenarios, qualified by the key of the UX spec they prove, e.g. `UI-main-menu.US2.1`.

## Stability

- Never renumber or reuse an ID. New elements take the next number after the highest ever used in that section.
- When an element is removed, delete it, leave the gap, and update every reference to it.
- When an element's meaning changes, keep its ID and update every story that proves it.
- Where order matters (focus, journey steps), list order is authoritative, not ID number.

## Keys and identified sections

| Spec | Key | Sections and their ID letters |
|------|-----|-------------------------------|
| [`actors/`](actors/) | `ACT-<name>` | Can operate `C`, Cannot operate `K` |
| [`screens/`](screens/) | `UI-<name>` | Regions `R`, Controls `C`, States `S` |
| [`journeys/`](journeys/) | `J-<name>` | Steps `S`, Branches `B`, Entry and exit `N` |
| [`navigation.md`](navigation.md) | `NAV` | Transitions `T`, Entry and resume `N` |
| [`exceptions.md`](exceptions.md) | `EX` | Exceptions by name, e.g. `EX.loading` |
| [`controls.md`](controls.md) | `IN` | UI actions by name, e.g. `IN.confirm`; Bindings `B`; Focus `F` |

Sections not listed (job, goals, experience intent, copy, and similar) carry no IDs. User stories do not prove them. Copy is checked against the mockup during review.
