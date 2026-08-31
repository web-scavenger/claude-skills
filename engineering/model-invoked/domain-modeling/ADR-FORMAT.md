# ADR Format

ADRs live in `docs/adr/`, numbered sequentially: `0001-slug.md`, `0002-slug.md`, ... Create the directory only when the first ADR is needed.

## Minimal template

```md
# {NNNN}. {Short title}

{1-3 sentences: the context that forced a decision, what was decided, and why.}
```

That's often enough. Only add these sections when they genuinely add understanding — don't pad:

- **Status** — proposed / accepted / superseded by NNNN (only needed once an ADR can go stale)
- **Considered options** — the real alternatives and why each lost
- **Consequences** — what this decision makes easier or harder later

## When an ADR is warranted

All three must hold:

1. **Hard to reverse** — changing course later carries real cost
2. **Surprising without context** — a future reader will ask "why did they do it this way?"
3. **Genuine trade-off** — real alternatives existed and one was deliberately chosen

Skip the ADR if the decision is easily reversible, self-explanatory from the code, or the only reasonable choice.

## Good subjects

- Architectural patterns and system structure
- Communication method between components (sync vs async, events vs calls)
- Technology with real switching cost (database, platform, auth provider)
- Domain/component ownership boundaries
- A deliberate departure from the conventional approach
- External constraints invisible in the code
- Rejecting a popular alternative for a specific reason
