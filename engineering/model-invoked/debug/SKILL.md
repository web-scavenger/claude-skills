---
name: debug
description: Structured debugging of a failing test, error, or unexpected behavior. Use when the user reports a bug, a stack trace, a failing test, or "why is this happening". Reproduce → minimize → hypothesize → instrument → fix.
allowed-tools: Bash, Read, Grep, Glob, Edit
---

## Task

Debug the problem methodically. Do NOT jump to a fix before you can reproduce and explain it.

1. **Reproduce** — get a deterministic repro (run the failing test/command). If you can't reproduce, gather more info from the user before changing code.
2. **Minimize** — narrow to the smallest input/code path that still triggers it. Note what does and doesn't fail.
3. **Hypothesize** — state 1–3 concrete hypotheses for the root cause, ranked by likelihood. Each must be falsifiable.
4. **Instrument** — test the top hypothesis with a targeted log/assert/breakpoint or by reading the exact code path. Confirm or eliminate it. Repeat until the root cause is proven.
5. **Fix** — fix the ROOT cause, not the symptom. Then re-run the repro to confirm it's gone, and check you didn't break neighbors.
6. **Report** — one paragraph: what was wrong, why, and what the fix does. Remove temporary instrumentation.

Resist confirmation bias: if evidence contradicts a hypothesis, drop it.
