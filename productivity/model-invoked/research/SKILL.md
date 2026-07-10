---
name: research
description: Investigate a question against primary sources and produce cited markdown notes. Use when the user asks you to research, investigate, compare options, or "find out how X works" and wants a sourced answer rather than a quick guess.
allowed-tools: WebSearch, WebFetch, Read, Grep, Glob, Write
argument-hint: [question]
---

## Task

Answer the user's question by investigating **primary sources**, not by recalling from memory. Every non-obvious claim must be traceable to a source.

1. **Frame** — restate the question and what a good answer must cover. If it's broad, split into sub-questions.
2. **Gather** — search the web and/or the codebase. Prefer primary sources (official docs, source code, specs, RFCs) over blogs and summaries. Follow links to originals.
3. **Cross-check** — corroborate important claims across ≥2 sources when they matter. Note disagreements rather than papering over them.
4. **Synthesize** — write a markdown report:

```
# <question>
## Answer
<direct answer up front>

## Findings
- <claim> — evidence — [source](url)

## Caveats / unknowns
- <what's uncertain, contested, or unverified>

## Sources
- [title](url) — what it's good for
```

Rules:
- Distinguish what sources say from your inference. Flag guesses as guesses.
- Don't pad. If the answer is short, keep it short.
- Offer to save the report to a file.
