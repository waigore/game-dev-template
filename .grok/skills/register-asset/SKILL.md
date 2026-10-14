---
name: register-asset
description: |-
  Catalog an asset a person supplies (human-made, or third-party they
  sourced) by running APR.register in specs/assets/: asset ID, author or
  source, rights or license, files under the asset root, and an optional
  review exemption granted and recorded by that person. Exempt assets are
  approved on merge; others go through review-asset. Never exempts
  AI-generated assets. Opens a PR.
  Use when the user hands over art, animation, interface art, fonts, or audio
  they or a teammate made or bought, and wants it in the catalog.

  Examples:
    - user: "I drew the player idle sprite, add it" → register, ask about exemption, PR
    - user: "Add my title music, skip review" → register with exemption by the user
    - user: "Register these purchased SFX, review them" → register, license check, review-asset
    - user: "Here's an image from the AI tool" → not human-made; use manage-asset instead
---

# Register asset (facade)

Canonical instructions: [`.agents/skills/register-asset/SKILL.md`](../../../.agents/skills/register-asset/SKILL.md).

Read that file, then run the workflow there. Do not invent a parallel process.
