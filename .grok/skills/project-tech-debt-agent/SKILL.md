---
name: project-tech-debt-agent
description: |-
  Analyze the whole implementation tree and file structural refactors,
  preferring code that no accepted or closed refactor issue has named.
  Thin facade over suggest-code-refactors. Does not edit the repo. Filing
  needs no second confirmation.
  Use when the user asks for a tech-debt pass, a structural refactor sweep,
  or code that has not been refactored in a while.

  Examples:
    - user: "Run the tech-debt agent" → whole tree, file the cut
    - user: "Look at code we have not refactored in a while" → same pass
---

# Project tech debt agent (facade)

Canonical instructions: [`.agents/skills/project-tech-debt-agent/SKILL.md`](../../../.agents/skills/project-tech-debt-agent/SKILL.md).

Read that file and its `references/` as needed, then run the workflow there. Do not invent a parallel process.
