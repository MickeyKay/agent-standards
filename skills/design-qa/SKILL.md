---
name: design-qa
description: Validate implemented UI against design intent across layout, states, interaction behavior, and accessibility.
when_to_use: Use after UI implementation to assess fidelity and ship-readiness against design/handoff expectations.
category: design-product
inputs: design source, implemented UI, state matrix, constraints
outputs: fidelity report with blockers, non-blockers, and acceptance recommendation
depth: medium
related_standards: standards/frontend-standards.md, standards/accessibility-standards.md
---

# Design QA

## Gather First

- design source of truth (Figma/handoff/screens)
- implemented environment and route/component scope
- expected state matrix (default, hover, focus, loading, empty, error, disabled)
- responsive breakpoints and device assumptions
- known intentional deviations

## Workflow

1. Compare structural layout and hierarchy against the source of truth.
2. Validate spacing, typography, sizing, and visual rhythm at key breakpoints.
3. Verify interaction states and transitions (hover, focus, pressed, loading, errors).
4. Check content behavior: truncation, overflow, empty and long-text handling.
5. Validate keyboard/focus/accessibility behavior for interactive elements.
6. Distinguish blocker gaps from polish-level differences.
7. Produce a ship-readiness recommendation with required follow-ups.

## Output Expectations

- fidelity findings grouped by severity
- explicit blocker vs non-blocker list
- acceptance recommendation (ship / ship-with-follow-ups / do-not-ship)
- list of intentional deviations acknowledged by design/product

## Completion Criteria

- critical UX/accessibility mismatches are identified
- severity and ownership are clear
- result is actionable for implementation and release decisions

## Anti-Patterns

- treating pixel-perfect matching as the only quality measure
- ignoring accessibility and interaction-state mismatches
- reporting differences without severity or ownership
