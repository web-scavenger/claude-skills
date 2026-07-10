---
name: review
description: Review the current changes on two axes — engineering standards and spec/intent compliance.
disable-model-invocation: true
allowed-tools: Bash, Read, Grep, Glob
---

## Changes under review

!`git diff --stat && echo "--- STAGED+UNSTAGED ---" && git diff HEAD`

## Task

Review the diff above on **two independent axes**. Report each finding as `file:line — issue — suggested fix`, grouped by severity (Blocking / Should-fix / Nit).

**Axis 1 — Engineering standards**
- Correctness, edge cases, error handling at real boundaries.
- Security (injection, unsafe input, secrets), and obvious perf traps.
- Readability, naming, dead code, and consistency with nearby patterns.
- Tests: are the changes covered? Are existing tests still valid?

**Axis 2 — Spec / intent**
- Does the change actually do what it set out to do? Ask the user for the intent if it's unclear.
- Scope creep: changes unrelated to the stated goal.
- Missing pieces the intent implies (docs, migrations, callers not updated).

End with a one-line verdict: ship / ship-after-fixes / needs-rework. Be direct; skip praise padding.
