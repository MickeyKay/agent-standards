# Code Review Standards

Code review should improve correctness, maintainability, and product quality. It is not a style debate venue and it is not a substitute for thinking before coding.

## Review Priorities

Review in this order:

1. correctness and user impact
2. security and authorization
3. data integrity and failure handling
4. maintainability and consistency
5. tests and observability
6. style and polish

## What Reviewers Should Look For

- behavior regressions, especially user-facing ones
- missing server-side authorization checks
- unsafe migrations or risky data changes
- hidden complexity and unnecessary abstraction
- missing or weak tests for high-risk changes
- accessibility, loading, and error-state regressions
- inconsistency with established local patterns

## What Authors Should Provide

PRs should make review easy.

Include:

- a concise summary of what changed
- any notable tradeoffs or constraints
- rollout or migration notes when relevant
- test coverage notes
- screenshots or recordings for material UI changes

## Review Comment Quality

- Be specific about the issue and why it matters.
- Distinguish between required changes and optional suggestions.
- Prefer concrete alternatives over vague criticism.
- Keep comments anchored to user impact, correctness, risk, or maintainability.

## Scope Discipline

- Prefer small, reviewable changes over broad rewrites.
- If a PR includes cleanup beyond the core task, make sure it does not obscure the main change.
- Defer non-essential refactors unless they materially reduce risk or confusion in the touched area.

## Approval Standard

Approve when:

- the change is correct enough for the current context
- key risks are addressed
- tests and safeguards are adequate
- remaining debt is understood and intentional

Do not block on personal preference when the change is coherent and aligned with local standards.
