#!/usr/bin/env bash
# Fail when any Markdown file under the given directories exceeds the word limit.
# Words are counted like `wc -w` on the raw file. A file at exactly the limit passes.
# Usage: check-word-limit.sh [dir ...]   (default: docs specs)
# Env: WORD_LIMIT (default 500)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
LIMIT="${WORD_LIMIT:-500}"

if [[ $# -eq 0 ]]; then
  set -- docs specs
fi

cd "$ROOT"

for dir in "$@"; do
  if [[ ! -d "$dir" ]]; then
    echo "error: directory not found: $dir" >&2
    exit 1
  fi
done

checked=0
failed=0

while IFS= read -r -d '' file; do
  words="$(wc -w < "$file" | tr -d ' ')"
  checked=$((checked + 1))
  if (( words > LIMIT )); then
    failed=$((failed + 1))
    echo "  FAIL: $file ($words words, limit $LIMIT)"
    if [[ -n "${GITHUB_ACTIONS:-}" ]]; then
      echo "::error file=$file,title=Word limit exceeded::$words words (limit $LIMIT). Split into focused files and link between them."
    fi
  fi
done < <(find "$@" -type f -name '*.md' -print0 | sort -z)

echo "Checked $checked Markdown file(s) in: $*"

if (( failed > 0 )); then
  echo "error: $failed file(s) exceed $LIMIT words" >&2
  exit 1
fi

echo "OK: all files are within $LIMIT words"
