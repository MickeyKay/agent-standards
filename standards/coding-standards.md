# Coding Standards

These standards are optimized for modern TypeScript and web application teams. They favor maintainable code, predictable behavior, and incremental delivery over cleverness.

## Core Principles

- Optimize for readability first.
- Prefer explicit, boring code over dense abstractions.
- Change the smallest surface area that solves the problem.
- Reuse established patterns in the codebase before introducing new ones.
- Leave code easier to understand than you found it.

## Structure And Design

- Keep modules focused. If a file has unrelated responsibilities, split it.
- Prefer straightforward composition over deep inheritance or meta-programming.
- Introduce abstractions only after a repeated need is clear.
- Keep data flow easy to trace. Avoid hiding behavior behind too many helpers.
- Name functions and variables for domain meaning, not implementation trivia.

Good:

- `calculateInvoiceTotal`
- `canUserEditProject`
- `startCheckoutSession`

Avoid:

- `handleData`
- `processThing`
- `manager`

## TypeScript Guidance

- Prefer precise types over `any`.
- Use `unknown` at boundaries and narrow explicitly.
- Model domain states clearly rather than relying on nullable or loosely shaped objects everywhere.
- Avoid type assertions unless a boundary guarantees the shape and the code documents why.
- Keep shared utility types simple; avoid creating a type-level DSL.

## Functions And Components

- Keep functions small enough to understand without scrolling through multiple branches of unrelated logic.
- Pass explicit inputs rather than reaching through global state where practical.
- Separate validation, authorization, side effects, and presentation concerns where possible.
- In UI code, keep components focused and split out dense conditional rendering when it harms readability.

## State And Side Effects

- Make mutations intentional and visible.
- Prefer server-authoritative writes for business-critical state.
- Keep side effects close to the workflow that needs them.
- Avoid hidden write paths that make it hard to reason about behavior.

## Errors And Observability

- Fail loudly at unsafe boundaries and gracefully at user-facing boundaries.
- Return actionable error messages for operators and safe messages for users.
- Log enough context to debug production issues without leaking secrets or sensitive data.
- Do not swallow errors without a clear reason.

## Refactoring Guidance

- Prefer incremental change over broad rewrites.
- Preserve behavior first; improve structure second.
- When touching fragile code, add or improve tests before refactoring.
- Document tradeoffs when you deliberately accept technical debt or defer cleanup.

## Dependency And Utility Discipline

- Use existing dependencies before adding new ones.
- Add a new dependency only when it materially reduces complexity or risk.
- Avoid creating internal helper layers that only rename existing library calls without adding clarity.

## Documentation

- Update nearby docs when behavior, architecture, or conventions materially change.
- Add comments only where code alone is not enough to explain intent or a non-obvious constraint.
- Prefer examples in docs over long theoretical explanations.
