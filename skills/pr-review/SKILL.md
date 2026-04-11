---
name: pr-review
description: Review a pull request for correctness, regressions, and maintainability with emphasis on user-facing and authorization risk.
when_to_use: Use when asked to review a PR, diff, or set of changes.
---

# PR Review

## Gather First

- PR summary or stated intent
- changed files and diff
- relevant standards for the touched area
- any screenshots, tests, or rollout notes

## Workflow

1. Establish the intended behavior change before judging implementation.
2. Review for correctness and user impact first.
3. Check authorization, security-sensitive paths, and data integrity second.
4. Look for regressions in loading, error, empty, and permission-denied states.
5. Review tests for meaningful coverage of the risky paths.
6. Flag unnecessary abstraction, hidden complexity, or inconsistent local patterns.
7. Separate required findings from optional polish.

## Output Expectations

- findings ordered by severity
- file references for actionable issues
- concise note on residual risk or testing gaps

## Completion Criteria

- the review identifies concrete risks, not vague preferences
- user-facing regressions and server-side risks were considered explicitly
- the final output makes clear what must change versus what is optional
