#!/usr/bin/env bash
# Symlink every skill in this repo into ~/.claude/skills (flat), which is where
# Claude Code discovers personal skills. Edit skills here; they go live everywhere.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

mkdir -p "$SKILLS_DIR"

echo "Repo:    $REPO_DIR"
echo "Target:  $SKILLS_DIR"
echo

seen=" "   # space-delimited list of already-linked skill names (bash 3.2 compatible)
linked=0

# Find every skill (a dir containing SKILL.md), regardless of category nesting.
while IFS= read -r -d '' skill_md; do
  skill_dir="$(dirname "$skill_md")"
  name="$(basename "$skill_dir")"
  link="$SKILLS_DIR/$name"

  if [[ "$seen" == *" $name "* ]]; then
    echo "  ! SKIP  $name — duplicate name (already linked)"
    continue
  fi
  seen="$seen$name "

  # Replace an existing symlink; refuse to clobber a real dir/file.
  if [[ -L "$link" ]]; then
    rm "$link"
  elif [[ -e "$link" ]]; then
    echo "  ! SKIP  $name — a real file/dir already exists at $link (not a symlink)"
    continue
  fi

  ln -s "$skill_dir" "$link"
  echo "  + $name -> ${skill_dir#$HOME/~}"
  linked=$((linked + 1))
done < <(find "$REPO_DIR" -type f -name 'SKILL.md' -print0)

echo
echo "Linked $linked skill(s). Restart / reload Claude Code to pick them up."
