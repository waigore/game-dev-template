# Reviewing `specs/vision.md`

Instructions for agents reviewing the game vision document ([`specs/vision.md`](../../specs/vision.md)). Run every check, then report a verdict.

## Checklist

### Completeness

- [ ] No `<!-- fill in -->` placeholders remain; unused template rows are deleted.
- [ ] Every section is present: elevator pitch, high-level description, target audience and player fantasy, essential qualities, tradeoffs, non-goals.

### Elevator pitch

- [ ] 1–2 sentences.
- [ ] States the core player action and why it is compelling.
- [ ] Understandable without reading the rest of the document.

### High-level description

- [ ] ≤150 words, one paragraph.
- [ ] Covers core loop, setting, and tone.
- [ ] Describes the experience, not a feature list.
- [ ] Consistent with the elevator pitch.

### Target audience and player fantasy

- [ ] Audience is specific (not "everyone").
- [ ] Player fantasy is a feeling or role, not a mechanic.

### Essential qualities

- [ ] Between 1 and **5** qualities.
- [ ] Each has a name, a one-line description, and a "supports it if…" test.
- [ ] Each test is observable: two reviewers would reach the same judgment on a given feature.
- [ ] Qualities are distinct (no overlap or synonyms).
- [ ] Qualities follow from the pitch and description.

### Tradeoffs

- [ ] Every likely conflict between qualities has a stated winner.
- [ ] Ordering is consistent (no cycles such as A > B, B > C, C > A).

### Non-goals

- [ ] At least one non-goal.
- [ ] Non-goals do not contradict the pitch, description, or qualities.

### Format

- [ ] File is under 500 words ([`specs/README.md`](../../specs/README.md)).

## Verdict

- **Pass**: every check passes.
- **Fail**: one or more checks fail.

Report back in this shape:

```markdown
**Vision review: Pass | Fail**

Findings:
- <section>: <failed check> — <suggested fix>

Notes (optional): <non-blocking observations>
```

List only failed checks under Findings. If a check cannot be judged without product-owner input, list it as a finding and mark it `needs clarification`.
