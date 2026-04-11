---
name: refactor-safely
description: Improve structure without breaking behavior by sequencing changes conservatively and adding safeguards first.
when_to_use: Use when code needs cleanup, simplification, or extraction without intentional product behavior changes.
---

# Refactor Safely

## Gather First

- current behavior and known invariants
- existing tests and coverage gaps
- risky side effects, persistence paths, and authorization logic
- smallest boundary that can be improved independently

## Workflow

1. Define what must not change.
2. Add or strengthen tests around fragile or high-value behavior before large edits.
3. Refactor in small, reviewable steps instead of one broad rewrite.
4. Keep side effects, authorization checks, and persistence semantics stable unless explicitly in scope.
5. Re-run tests or other verification after each meaningful slice.
6. Stop if the change begins to alter behavior or expand into architecture redesign without a clear mandate.

## Output Expectations

- cleaner structure with preserved behavior
- tests or verification notes supporting the refactor
- explicit note of any deferred cleanup

## Completion Criteria

- behavior remains stable
- the new structure is easier to understand
- the change did not introduce unnecessary new abstractions
