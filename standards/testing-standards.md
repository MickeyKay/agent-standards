# Testing Standards

Tests should protect meaningful behavior, catch regressions, and support safe change. They should not exist only to satisfy coverage metrics.

## What To Test

Prioritize tests for:

- business rules
- permission and authorization behavior
- edge cases that previously caused defects
- data validation and transformation logic
- user-visible flows that are easy to regress
- integrations that are expensive to break silently

Lower priority:

- trivial passthrough wrappers
- implementation details with no user or business impact
- brittle snapshots with low review value

## Testing Strategy

- Favor a balanced mix of unit, integration, and end-to-end coverage.
- Test behavior at the highest level that remains fast and reliable.
- Prefer integration tests for workflows spanning persistence, APIs, and authorization.
- Use end-to-end tests sparingly for core journeys and high-risk regressions.

## Quality Bar

- Each added test should justify its maintenance cost.
- Tests should fail for the right reason and be easy to diagnose.
- Avoid over-mocking domain behavior into irrelevance.
- Use realistic inputs and data shapes when validating critical logic.

## Regression Discipline

- Add a regression test when fixing a real bug if practical.
- Reproduce the failure mode first, then fix it.
- If a bug cannot be tested directly, document why and add the closest useful coverage.

## UI Testing

- Prefer tests that exercise what users can observe or do.
- Assert on roles, labels, visible text, or stable outcomes over implementation details.
- Preserve accessibility semantics in test selectors.
- Avoid tests that break every time markup structure changes without affecting behavior.

## API And Backend Testing

- Test authorization on the server, not only in the client.
- Cover invalid inputs, partial failures, and concurrency-sensitive workflows where relevant.
- Validate response contracts that other systems depend on.

## Test Maintenance

- Remove tests that no longer protect meaningful behavior.
- Refactor repetitive setup when it improves clarity, not just terseness.
- Keep factories and fixtures realistic but small.
- Fix flaky tests promptly; do not normalize rerunning until green.
