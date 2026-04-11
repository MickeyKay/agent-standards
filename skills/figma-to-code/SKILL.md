---
name: figma-to-code
description: Turn a Figma design or handoff into an implementation plan and code changes that fit the existing product patterns.
when_to_use: Use when building or updating UI from a Figma file, screenshot, or design spec.
---

# Figma To Code

## Gather First

- source of truth for the design: Figma link, screenshots, or handoff notes
- affected route, screen, or component scope
- existing design system or component primitives in the repo
- responsive requirements and edge states
- interaction details: hover, focus, loading, error, empty, disabled

## Workflow

1. Inspect the existing codebase patterns before inventing new UI structure.
2. Translate the design into implementation slices: layout, components, states, data needs, and interactions.
3. Identify reuse opportunities in existing primitives, tokens, and composition patterns.
4. Call out design details that are missing or ambiguous before making risky assumptions.
5. Implement the smallest coherent slice first, usually structure and default state.
6. Add interaction states, accessibility semantics, and responsive behavior.
7. Review visual polish issues that commonly drift from design: spacing, hierarchy, empty states, and focus behavior.
8. Verify the result against the design intent, not just pixel fragments.

## Output Expectations

- working UI aligned with existing project patterns
- explicit note of any design assumptions or deviations
- accessibility-preserving implementation
- responsive handling for realistic viewport changes

## Completion Criteria

- the core flow matches the design intent
- loading, empty, error, and disabled states are addressed or explicitly deferred
- keyboard and focus behavior remain coherent
- no unnecessary component abstraction was introduced
