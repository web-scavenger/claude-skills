---
name: commit-msg
description: Write a Conventional Commit message from the staged diff (TS/JS repos).
disable-model-invocation: true
allowed-tools: Bash
---

## Staged diff

!`git diff --cached --stat && echo "---" && git diff --cached`

## Task

Write exactly ONE Conventional Commit message from the staged diff above.

Rules:
- Type: one of `feat`, `fix`, `refactor`, `chore`, `docs`, `test`, `perf`, `build`, `ci`.
- Optional scope in parentheses, e.g. `feat(auth):`.
- Subject: imperative mood, lowercase, no trailing period, ≤ 72 chars.
- Body (only if the change isn't self-evident): explain WHY, not what. Wrap at 72 cols.
- Breaking changes: add a `BREAKING CHANGE: <desc>` footer.

Output ONLY the commit message in a code block — nothing else.

If nothing is staged, say so and stop (suggest `git add`).
