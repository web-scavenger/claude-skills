---
name: write-tests
description: Write vitest/jest tests for a TS/JS file, covering the golden path and edge cases.
disable-model-invocation: true
allowed-tools: Read, Grep, Glob, Bash
argument-hint: [path-to-file]
---

## Task

Write tests for the file the user names.

1. Detect the test runner and conventions before writing anything: check `package.json` scripts/deps and look at an existing `*.test.ts` / `*.spec.ts` for style (imports, describe/it vs test, assertion lib, mocking approach). Match them — do not impose a new style.
2. Read the target file and understand each exported unit's contract.
3. Cover, per unit:
   - **Golden path** — expected inputs → expected output.
   - **Edge cases** — empty/null/boundary inputs, error paths, async rejections.
   - **Behavior, not implementation** — assert observable results, don't over-mock internals.
4. Put the test file where the repo convention expects it (co-located vs `__tests__`).
5. After writing, run the test command for just this file and iterate until green (or report why a test legitimately fails).

Do not test private internals or trivial getters. Keep each `it` focused on one behavior.
