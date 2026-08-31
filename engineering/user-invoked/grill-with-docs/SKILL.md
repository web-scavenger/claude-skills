---
name: grill-with-docs
description: Run a /grilling session that also builds the domain model (CONTEXT.md glossary and ADRs) as it goes.
disable-model-invocation: true
argument-hint: [plan-or-topic]
---

## Task

This is a shortcut that combines two skills: **grilling** (pressure-test the plan) and **domain-modeling** (capture the glossary/ADR fallout of that conversation as it happens).

Call the Skill tool twice, for `grilling` and `domain-modeling`, passing along whatever plan/topic the user gave (or the argument passed to this command). Run the grilling interview as the primary loop; apply the domain-modeling discipline throughout it — challenging terminology, updating `CONTEXT.md`, and offering ADRs per its own criteria — rather than as a separate pass afterward.

If it's not clear what should be grilled, ask the user what they want pressure-tested before starting.
