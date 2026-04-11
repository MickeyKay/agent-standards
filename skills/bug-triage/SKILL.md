---
name: bug-triage
description: Triage a bug methodically, isolate the failure mode, and define the smallest reliable fix path.
when_to_use: Use when investigating a defect report, flaky behavior, or production issue.
---

# Bug Triage

## Gather First

- observed behavior and expected behavior
- reproduction steps, environment, and frequency
- logs, screenshots, stack traces, or error messages
- recent related changes and affected area of code

## Workflow

1. Reframe the report into a concrete failure statement.
2. Reproduce the bug if practical, or narrow the conditions under which it occurs.
3. Identify whether the issue is caused by data, state, authorization, rendering, timing, or integration failure.
4. Check for recent regressions and surrounding assumptions in code.
5. Propose the smallest fix that addresses the real cause rather than only the symptom.
6. Add a regression test when practical.
7. Document remaining uncertainty if the root cause cannot be fully proven.

## Output Expectations

- probable root cause or narrowed hypothesis
- recommended fix path
- reproduction and verification notes

## Completion Criteria

- the bug is either reproduced or constrained meaningfully
- the fix path is tied to evidence
- the response distinguishes facts from assumptions
