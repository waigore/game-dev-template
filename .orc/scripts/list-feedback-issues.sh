#!/bin/sh
# Open type:feedback issues as JSON [{"number":N}, ...].
#   --open   gate: every open issue that is not status:resolved
#   (default) work list: pending-analysis, then pending-resolution;
#             within a phase, priority (critical, high, normal/unlabeled), then number
set -eu

MODE=${1:-queue}
if [ "$MODE" != "queue" ] && [ "$MODE" != "--open" ]; then
  echo "usage: list-feedback-issues.sh [--open]" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "error: jq is required" >&2
  exit 1
fi

if [ "$MODE" = "--open" ]; then
  FILTER='[.[] | select(any(.labels[].name; . == "status:resolved") | not)] | map({number})'
else
  FILTER='
    [.[]
     | select(any(.labels[].name;
         . == "status:pending-analysis" or . == "status:pending-resolution"))]
    | map(. + {
        phase: (if any(.labels[].name; . == "status:pending-analysis") then 0 else 1 end),
        tier: ([.labels[].name]
          | if any(. == "priority:critical") then 0
            elif any(. == "priority:high") then 1
            else 2 end)
      })
    | sort_by(.phase, .tier, .number)
    | map({number})
  '
fi

gh issue list --state open --label type:feedback --limit 100 --json number,labels \
  | jq "$FILTER"
