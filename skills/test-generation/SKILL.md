---
name: test-generation
description: Add or improve tests that protect meaningful behavior and regressions without overfitting to implementation details.
when_to_use: Use when a feature lacks coverage, a bug needs regression protection, or a change increases risk.
---

# Test Generation

## Gather First

- behavior under test
- current coverage and missing risk areas
- existing test framework and local patterns
- known regressions, edge cases, and authorization rules

## Workflow

1. Identify the highest-value behavior to protect.
2. Choose the highest reliable test level: unit, integration, or end-to-end.
3. Follow local test patterns unless they are clearly harmful.
4. Prefer assertions on outcomes and contracts over implementation details.
5. Cover unhappy paths when they matter: validation, permissions, partial failure, or user-facing errors.
6. Keep fixtures realistic and easy to understand.
7. Remove or avoid brittle assertions that create noise without protection.

## Output Expectations

- tests that protect meaningful behavior
- clear explanation of what risk the tests cover
- note of any important gaps left untested

## Completion Criteria

- the added tests would catch a realistic regression
- the tests are maintainable and readable
- the coverage matches the change risk, not an arbitrary quota
