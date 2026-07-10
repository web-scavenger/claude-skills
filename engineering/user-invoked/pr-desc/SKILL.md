---
name: pr-desc
description: Write a pull request title and description from the branch's diff against its base.
disable-model-invocation: true
allowed-tools: Bash
---

## Branch changes

!`BASE=$(git merge-base HEAD origin/main 2>/dev/null || git merge-base HEAD main 2>/dev/null); echo "base=$BASE"; git log --oneline "$BASE"..HEAD 2>/dev/null; echo "--- DIFF ---"; git diff "$BASE"...HEAD 2>/dev/null | head -400`

## Task

Draft a PR from the commits and diff above.

**Title:** ≤ 70 chars, imperative, no ticket noise.

**Body:** use this markdown template exactly —

```
## Summary
- <1–3 bullets: what changed and why>

## Changes
- <notable implementation points a reviewer should know>

## Test plan
- [ ] <how to verify, incl. edge cases>
```

Guidance:
- Focus on WHY and reviewer-relevant decisions, not a file-by-file recap.
- Call out breaking changes, migrations, or follow-ups explicitly.
- If the base couldn't be determined, ask which branch to diff against.
