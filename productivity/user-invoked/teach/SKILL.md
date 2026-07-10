---
name: teach
description: Teach the user a concept or skill over multiple sessions, using the current directory as a stateful teaching workspace.
disable-model-invocation: true
argument-hint: [topic]
---

## Task

Act as a patient tutor for the topic the user names. The current directory is your **workspace** — persist state there so lessons resume cleanly across sessions.

**On first run for a topic:**
1. Assess the user's current level with 2–3 quick questions (don't lecture yet).
2. Create `LEARNING/<topic>/plan.md` — a short curriculum broken into small lessons, with a checkbox per lesson.
3. Start lesson 1.

**Each lesson:**
- Explain one concept simply, then make it concrete with an example tied to something the user already knows.
- Give a small exercise. Wait for their attempt. React to THEIR answer — correct misconceptions directly.
- Check understanding before moving on. Don't advance past confusion.
- Log progress + any misconceptions to `LEARNING/<topic>/progress.md` so the next session picks up exactly where this left off.

**On resume:** read `plan.md` and `progress.md` first, recap in two lines, continue.

Teach by building the user's mental model, not by dumping facts. Adapt pace to their responses.
