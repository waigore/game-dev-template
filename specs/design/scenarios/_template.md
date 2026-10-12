# Scenario: <!-- fill in: name -->

<!-- Template: copy to scenarios/<kebab-name>.md, one file per scenario, and delete this line. -->

A defined play setup plus worked walkthroughs that show the design in action. Scenarios prove that specs combine correctly; if a walkthrough cannot be resolved from the other specs, those specs are incomplete. Rules: [`../design.md`](../design.md#rules-for-every-design-spec).

- **Kind**: <!-- fill in: mission / puzzle / match setup / encounter / tutorial / other -->
- **Stage**: <!-- fill in: link, or "N/A" -->
- **Serves**: <!-- fill in: vision qualities and definition scope items -->

## Setup

- **Starting state**: <!-- fill in: values of relevant game-state fields; link game-state.md -->
- **Participants**: <!-- fill in: links to characters and entities -->
- **Configuration and difficulty**: <!-- fill in: options and difficulty level in effect -->
- **Objectives**: <!-- fill in -->
- **Constraints**: <!-- fill in: limits such as time, resources, or forbidden actions -->
- **End conditions**: <!-- fill in: link end-conditions.md entries -->

## Walkthroughs

At least one. Include a success path and a failure path where both are possible. Step IDs are `W<walkthrough>.<step>`; see [`../ids.md`](../ids.md).

### Walkthrough 1: <!-- fill in: name, e.g. "Clean win" -->

| ID | Player does | Game responds (rule applied) | Resulting state |
|----|-------------|------------------------------|-----------------|
| <!-- fill in: W1.1 --> | <!-- fill in: verb or game event --> | <!-- fill in: link the rule and cite its qualified ID --> | <!-- fill in --> |

- **Outcome**: <!-- fill in: end condition reached and its consequences -->
- **Player experience**: <!-- fill in: what the player should have felt at key moments -->

## Edge cases covered

<!-- fill in: unusual situations this scenario deliberately exercises, or "None" -->

## Specs exercised

<!-- fill in: links to every feature, character, entity, flow, and condition this scenario depends on -->
