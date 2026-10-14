---
name: capture-requirements
description: |-
  Capture requirements for one specs/ target at a time via guided questions
  derived from that type's authoring rules and template placeholders, confirm
  answers with the user, then hand off to author-spec. Starts with the
  high-level stage (vision, definition, quality) and gates downstream specs
  until it is locked in. Use when interviewing for any spec, or when the user
  asks to capture requirements, gather requirements, or fill a spec by asking
  questions.

  Examples:
    - user: "Help me capture requirements" → next high-level file (vision first), interview, author-spec
    - user: "Capture requirements for the vision" → confirm specs/vision.md, interview, author-spec
    - user: "Help me fill definition by asking questions" → specs/definition/definition.md only
    - user: "Interview me for the movement feature" → only once the high-level stage is locked in
    - user: "Capture requirements for design and view" → ask which one path this session
---

# Capture requirements

Interview for **one** path under `specs/`, then write it via [`author-spec`](../author-spec/SKILL.md) and open a spec PR. Do not run `review-spec` or audits unless the user asks separately.

## High-level stage

These files set the big parameters every other spec builds on. Capture them first, in this order:

1. `specs/vision.md`
2. `specs/definition/definition.md`
3. `specs/definition/quality.md`

The stage is **locked in** when none of the three holds a `<!-- fill in -->` placeholder and none holds a **blocking TBD**: a TBD in the elevator pitch, essential qualities, scope, player objectives, supported platforms, engine, or spec depth. Other TBDs may stay open for later.

## Steps

0. **Setup**: run [`ensure-project-setup`](../ensure-project-setup/SKILL.md) unless it already passed in this session. Continue only on Pass.
1. **Resolve and confirm the target** path under `specs/`:
   - **None named**: the first high-level file, in order, that still holds a placeholder. If all three are captured but blocking TBDs remain, run [`audit-spec-tbd`](../audit-spec-tbd/SKILL.md) on them instead. If the stage is locked in, ask which downstream spec to capture.
   - **Downstream named** (design, view, UX, playtest, ADR, technical) while the stage is not locked in: do not capture it. Say what is missing and offer the next high-level file or the TBD audit.
   - **Ambiguous or several named**: ask which **one** file this session.
2. **Load capture context only** (same rules resolution as `author-spec`; do not invent parallel rules):
   - Open [`.agents/specs/rules/README.md`](../../specs/rules/README.md), take the most specific matching row, read that file, then every file in its **Also read** chain until none remain.
   - Read the existing target and/or the folder `_template` placeholders.
   - Read minimal upstream only when those rules require grounding for that type (links/IDs). Keep reads narrow.
3. **Interview**. Derive questions from required sections, placeholders, and gaps vs the rules. Prefer few focused rounds over a dump. For already-filled sections, ask only to confirm or revise. When the user has not decided something, record it as TBD per [Undecided aspects](../../specs/rules/README.md#undecided-aspects-tbd); do not invent product decisions. In the high-level stage, point out when a TBD would be blocking.
4. **Confirm**. Short bullet summary of what will be written, listing each TBD with its open question; wait for user OK or corrections.
5. **Author**. Run [`author-spec`](../author-spec/SKILL.md) for that target with the confirmed answers.
6. **Open a spec PR** per [Spec PRs](../../../docs/pull-requests.md#spec-prs) (labeled `no-automerge`).
7. **Offer the next target**: per step 1 with none named, and ask whether to continue now. A new target is a new run of these steps. Optionally note `review-spec`, and `audit-spec-tbd` when TBDs remain; do not run them.

## Rules

- One `specs/` path per run; several runs may follow each other in one session.
- No downstream capture until the high-level stage is locked in.
- Do not paste authoring rules into this skill, into `specs/`, or into a template.
- Do not edit `.agents/specs/rules/` unless the user asked to change the rules.
- Do not fill a `_template` file in place.
- Do not run `review-spec`, `audit-spec-applicability`, `audit-spec-terminology`, or `audit-spec-tbd` unless the user separately asks, or step 1 offers the TBD audit and the user accepts.
