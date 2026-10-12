# Win and Loss Conditions

Every way a unit of play ends. Must match the win/lose conditions in [`../definition/definition.md`](../definition/definition.md). Rules: [`design.md`](design.md#rules-for-every-design-spec).

## Units of play

| Unit | Win | Loss | Other endings |
|------|-----|------|---------------|
| <!-- fill in: game / run / match / stage / round / sub-game --> | <!-- fill in: summary --> | <!-- fill in: summary --> | <!-- fill in: draw, timeout, abandon, or "None" --> |

## Conditions

| ID | Unit | Type | Condition | Checked when | Outcome |
|----|------|------|-----------|--------------|---------|
| <!-- fill in: e.g. W1 --> | <!-- fill in --> | <!-- win / loss / draw / other --> | <!-- fill in: precise, in game-state terms --> | <!-- fill in: e.g. "end of each turn" --> | <!-- fill in: state changes and transition; link flow --> |

Other specs refer to conditions by qualified ID (e.g. `END.L1`); see [`ids.md`](ids.md).

## Precedence

- **P1**: <!-- fill in: how a set of simultaneous conditions resolves (e.g. "loss beats win in the same moment") and why -->

## Rewards and penalties

<!-- fill in: what each outcome grants or costs; link progression.md and economy features -->

## Experience intent

<!-- fill in: how winning and losing should feel; what makes a loss feel fair and a win feel earned -->
