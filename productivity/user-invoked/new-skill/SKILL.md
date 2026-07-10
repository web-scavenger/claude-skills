---
name: new-skill
description: Scaffold a new skill in this collection with correct frontmatter, then re-run the symlink installer.
disable-model-invocation: true
allowed-tools: Bash, Read, Write, Edit
argument-hint: [skill-name]
---

## Reference: what makes a good skill

- **`description` is everything for auto-invocation.** State what it does AND when to use it, in trigger language ("Use when the user asks to…"). This is the only text Claude sees when deciding to fire a model-invoked skill.
- **One skill = one job.** If it needs "and", it's probably two skills.
- **Write imperative instructions**, not prose. Tell the agent the steps and the output format.
- **Manual vs auto:** manual skills set `disable-model-invocation: true` (live under `*/user-invoked/`); auto skills omit it (live under `*/model-invoked/`) and lean hard on a precise `description`.
- **Least privilege:** only list `allowed-tools` the skill truly needs.
- Use `!` + backticked commands to inject live context (e.g. a git diff), and `${CLAUDE_SKILL_DIR}` to reference bundled files.

## Task

1. Ask (if not given): skill name (lowercase-hyphenated), category (`engineering` | `productivity`), invocation (`user-invoked` | `model-invoked`), and a one-line purpose.
2. Create `<category>/<invocation>/<name>/SKILL.md` in this repo (repo root is the parent of this skill's `${CLAUDE_SKILL_DIR}/../../..`). Include correct frontmatter for the chosen invocation and a first draft of instructions + output format.
3. Run the installer so the new skill is live everywhere:
   `bash "$(git -C "${CLAUDE_SKILL_DIR}" rev-parse --show-toplevel)/install.sh"`
4. Tell the user the slash command (`/<name>`) and remind them to reload/restart their session to pick it up.
