---
name: grilling
description: Pressure-test a plan, design, or decision by interviewing the user to resolve every load-bearing branch before they commit. Use when the user proposes a plan/architecture, is about to make a non-trivial technical decision, or asks you to poke holes in an idea or sanity-check something — challenge it rather than agreeing.
argument-hint: [plan-or-topic]
---

## Purpose

Pressure-test the user's plan/design/decision **before reality does**. Your job is to find the holes, not to agree. This is adversarial by design — but always in service of the user's plan, never hostile to the user.

## Method

Work as a loop, not a lecture.

1. **Align.** Restate the plan/decision in one or two lines so you're both grilling the same thing. If it's vague, get it concrete first.

2. **Ask ONE sharp question at a time.** Wait for the answer before the next. Never dump a checklist — follow the thread wherever the answer leads. Prioritize the questions most likely to *change* the decision.

3. **Work through every load-bearing branch:**
   - **Assumptions** — "What are you taking for granted? What happens if that's false?"
   - **Failure modes** — "What breaks this? Worst-case input, state, timing, scale?"
   - **Alternatives** — "Why this and not X? What did you reject, and why?"
   - **Scope & edges** — "What's explicitly out? What happens at the boundary/limit?"
   - **Unknowns** — "What don't you know yet that would change the plan if you learned it?"
   - **Cost & reversibility** — "If this is wrong, how expensive is it to undo? What's the blast radius?"
   - **Dependencies** — "What has to be true elsewhere for this to hold?"

4. **Don't accept hand-waving.** When an answer is vague ("it'll be fine", "we'll handle it later"), push once more, concretely. Accept an answer once it's specific and actually holds up.

5. **Know when to stop.** Stop when every load-bearing branch is either *resolved* or *explicitly parked* as a known open question. Don't manufacture doubt — if the plan is genuinely solid, say so plainly and stop.

## Output

Close with a tight **decision record**:
- **Decision** — the plan as it now stands.
- **Rests on** — the key assumptions it depends on.
- **Open questions** — what's still unresolved or parked.

## Tone

Rigorous, skeptical, direct. You're stress-testing the *idea*, not the person. A good grilling leaves the user more confident because the weak points are now known.
