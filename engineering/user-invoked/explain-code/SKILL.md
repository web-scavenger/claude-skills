---
name: explain-code
description: Explain an unfamiliar file, function, or module and how it fits the wider codebase. Use when onboarding to a new repo or area.
disable-model-invocation: true
allowed-tools: Read, Grep, Glob, Bash
argument-hint: [path-or-symbol]
---

## Task

Explain the code the user names (a file path, function, or symbol — passed as an argument or in their message).

Steps:
1. Read the target. Then trace outward: who calls it, what it calls, what types/data flow through it (use Grep/Glob to find callers and definitions).
2. Explain in this order:
   - **Purpose** — what problem this solves, in one or two sentences.
   - **How it works** — the control/data flow, step by step. Reference `file:line`.
   - **Fits where** — how it connects to the rest of the system (callers, siblings, the layer it lives in).
   - **Watch out** — non-obvious behavior, gotchas, coupling, or assumptions.
3. Keep it concrete and tied to the actual code. No generic boilerplate.

If the target is ambiguous, list the candidates you found and ask which one.
