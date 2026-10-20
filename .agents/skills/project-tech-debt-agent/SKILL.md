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

# Project tech debt agent

Thin facade. Run [`suggest-code-refactors`](../suggest-code-refactors/SKILL.md) for this request. Do not restate it. Do not edit the repository.
