---
name: to-spec
description: Turn a messy conversation, notes, or idea into a clean spec ready for an issue tracker.
disable-model-invocation: true
---

## Task

Synthesize everything discussed (this conversation and any notes the user points to) into a single, self-contained spec. The reader is someone who wasn't part of the discussion.

Output this markdown structure:

```
# <concise title>

## Problem
<what's broken or missing, and who feels the pain>

## Goal
<the outcome we want; how we'll know it's done>

## Non-goals
<explicitly out of scope, to prevent creep>

## Proposed approach
<the plan, at the right altitude — decisions made, not code>

## Open questions
<unresolved decisions that block or shape the work>

## Acceptance criteria
- [ ] <verifiable conditions>
```

Rules:
- Capture DECISIONS that were made, and flag what's still undecided as an open question — don't silently invent answers.
- Keep it tight. If something wasn't discussed and isn't needed, omit the section.
- Before finalizing, list any assumptions you had to make and ask the user to confirm them.
