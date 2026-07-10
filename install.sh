#!/usr/bin/env bash
# Installs the five skills into ~/.claude/skills/ (personal, all projects).
# Re-run any time to update; Claude Code picks up changes live.
set -euo pipefail
SRC="$(cd "$(dirname "$0")/skills" && pwd)"
DEST="${HOME}/.claude/skills"
mkdir -p "$DEST"
for s in product-insight thesis artifact claims ship-review; do
  rm -rf "${DEST:?}/$s"
  cp -R "$SRC/$s" "$DEST/$s"
  echo "installed $s"
done
echo
echo "Done. Restart Claude Code if ~/.claude/skills did not exist before."
