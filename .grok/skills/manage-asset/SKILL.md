---
name: manage-asset
description: |-
  Generate, import, update, or deprecate game assets by running the asset
  pipeline procedures in specs/assets/ against the style in specs/aesthetics/,
  record every change in the catalog's entry files, get each draft reviewed with
  review-asset, and open a PR. Spec first: only assets a coverage rule
  requires, through tool roles realized by Accepted ADRs or ADR-free tools in
  docs/asset-tools.md (Recraft for gen/edit/touch-up and style series; fal
  needs an ADR and is not used when the kind series is active).
  Never a banned tool.
  Use when the user asks to create, generate, source, regenerate, replace,
  touch up, or retire art, animation, interface art, fonts, or audio.
  For establishing a kind's Recraft style series, use establish-asset-style.
---

# Manage asset (facade)

Canonical instructions: [`.agents/skills/manage-asset/SKILL.md`](../../../.agents/skills/manage-asset/SKILL.md).

Read that file and its `references/` as needed, then run the workflow there. Do not invent a parallel process.
