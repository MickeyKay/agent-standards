---
name: nextjs-feature-build
description: Implement a new Next.js feature in a way that is consistent with existing app patterns, server authority, and product quality expectations.
when_to_use: Use when adding or extending a feature in a Next.js application.
---

# Next.js Feature Build

## Gather First

- feature goal and user-facing behavior
- target routes, layouts, and data boundaries
- existing app router patterns, server actions, and API usage
- authorization, validation, and analytics requirements
- loading, empty, error, and success state expectations

## Workflow

1. Inspect existing route and component patterns before introducing a new structure.
2. Decide what belongs on the server and what genuinely needs client-side interactivity.
3. Keep authorization and sensitive mutations authoritative on the server.
4. Implement the smallest end-to-end slice that proves the feature path.
5. Add loading, error, and empty states intentionally.
6. Preserve accessibility semantics and responsive behavior.
7. Add tests or verification proportional to the change risk.
8. Document notable tradeoffs if the feature introduces a new pattern.

## Output Expectations

- feature implementation aligned with local Next.js conventions
- safe server/client boundary choices
- explicit handling of critical UX states

## Completion Criteria

- the feature works end to end
- server-side authority is preserved for sensitive actions
- the implementation does not add unnecessary framework complexity
