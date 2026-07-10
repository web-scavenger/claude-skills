---
name: study-notes
description: Turn a topic, article, or the current session into structured study notes you can revise from later.
disable-model-invocation: true
argument-hint: [topic-or-source]
---

## Task

Produce durable study notes on the topic or source the user gives (a URL, a file, or "this conversation").

Structure the note as markdown:

```
# <topic>
> One-sentence summary (the thing to remember if you forget everything else).

## Key ideas
- <core concepts, each as a claim you could be quizzed on>

## How it works / details
<the mechanics, with small concrete examples or snippets>

## Gotchas & misconceptions
- <easy things to get wrong>

## Recall questions
1. <question>  — <answer>
...

## Sources
- <links / files>
```

Rules:
- Optimize for future recall, not completeness — cut filler.
- Prefer your own concise phrasing over quoting; quote only when precision matters.
- If the user has a `NOTES/` or similar dir, offer to save it there; otherwise print it and ask where to save.
