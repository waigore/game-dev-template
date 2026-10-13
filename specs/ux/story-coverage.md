# UX Story Coverage

The scenarios [user stories](stories.md) include for each kind of UX element, so every element is proven. Element IDs: [`ids.md`](ids.md). Rules: [`ux.md`](ux.md#rules-for-every-ux-spec).

## Baseline

Every element ID and every named item (exceptions and UI actions) is proven by at least one scenario in the story file of the spec that defines it. Requirements below are cumulative.

## Requirements by kind

| Element kind | Scenarios required |
|--------------|--------------------|
| Control (`C`) | Activating it produces its stated result. Activating it while unavailable changes nothing. |
| Screen state (`S`) | It is shown when its condition holds, with the controls that state allows. |
| Exception (`EX.<name>`) | It is shown when its condition holds. Recovery arrives at the named screen or state. |
| Navigation transition (`T`) | When the condition holds, the actor arrives. When it fails, the screen stays. An actor who cannot use it sees no change. |
| Entry and resume (`N`) | A new session opens on the named screen. The end or resume condition arrives at the named screen. |
| Journey step (`S` on a journey) | Using that step's control arrives at the named screen. |
| Journey branch (`B`) | When its condition holds at that step, the destination opens. |
| Binding (`B` on controls) | On that platform, the input activates the named UI action and no other action. |
| UI action (`IN.<name>`) | At least one binding on each platform the definition marks primary activates it. |
| Actor capability or constraint (`C`, `K`) | The actor can activate each allowed control. A forbidden control does not activate. |
| Region (`R`) | Each design fact it shows is visible when the design says the player can know it, and absent when the player cannot. The scenario asserts visibility only. |

## Phrasing game facts

Cite the design ID and the concrete value. Write "Then region R1 shows health 3". Leave the damage rule in the player story. Whether the fact may be known comes from the design.

## Not covered

Sections without IDs (job, goals, experience intent, copy, and similar) are judged during review and acceptance. Copy strings are checked on the mockup.
