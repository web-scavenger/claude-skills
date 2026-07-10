# claude-skills

My personal, version-controlled collection of [Claude Code](https://code.claude.com) skills.
Organized by category and invocation type (structure inspired by
[mattpocock/skills](https://github.com/mattpocock/skills)); all skills are my own.

## How it works

Claude Code discovers personal skills at `~/.claude/skills/<name>/SKILL.md` — **flat, one
level deep**. This repo keeps them organized in nested folders and `install.sh` symlinks each
one (flat) into `~/.claude/skills`. Edit here → live in every project.

```
engineering/
  user-invoked/   # manual: run with /name only   (disable-model-invocation: true)
  model-invoked/  # auto: Claude triggers from your prompt
productivity/
  user-invoked/
  model-invoked/
```

The folder names are organizational labels. **What actually controls invocation is the
frontmatter**, not the folder:
- Manual-only → `disable-model-invocation: true`
- Auto → omit that field, and write a precise `description` (that's what Claude matches on)
- Hidden from the `/` menu → `user-invocable: false`

The slash command is always the **immediate skill folder name** (`/commit-msg`), never the
category path.

## Skills

| Skill | Category | Invocation | What it does |
|-------|----------|------------|--------------|
| `/commit-msg`   | engineering | manual | Conventional Commit message from the staged diff |
| `/pr-desc`      | engineering | manual | PR title + description from the branch diff |
| `/explain-code` | engineering | manual | Explain an unfamiliar file/function and how it fits |
| `/write-tests`  | engineering | manual | vitest/jest tests for a file (golden path + edges) |
| `/review`       | engineering | manual | Two-axis review: standards + spec/intent |
| `debug`         | engineering | **auto** | Structured debugging loop |
| `/to-spec`      | productivity | manual | Turn a discussion into a tracker-ready spec |
| `/teach`        | productivity | manual | Multi-session tutoring in the current dir |
| `/study-notes`  | productivity | manual | Structured, recall-optimized notes |
| `/new-skill`    | productivity | manual | Scaffold a new skill + re-run installer |
| `research`      | productivity | **auto** | Investigate against primary sources, cited notes |

## Install

```bash
./install.sh
```

Re-run after adding or renaming a skill. Then restart/reload Claude Code.

## Add a skill

Fastest: run `/new-skill` inside Claude Code — it scaffolds the file and re-runs the installer.

By hand:
1. `mkdir -p <category>/<invocation>/<name>`
2. Create `<name>/SKILL.md` with frontmatter (`description` required-ish; add
   `disable-model-invocation: true` for manual).
3. `./install.sh`

## Sync to another machine

```bash
git clone <your-remote> ~/dev/claude-skills && cd ~/dev/claude-skills && ./install.sh
```
