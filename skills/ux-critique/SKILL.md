---
name: ux-critique
description: Evaluate user experience quality across core journeys, edge states, and interaction clarity, then provide prioritized improvements.
when_to_use: Use when reviewing an existing product flow, prototype, or newly implemented UI for usability quality.
category: design-product
inputs: user goal, flow/screens, interaction states, constraints
outputs: prioritized UX findings with severity, evidence, and fixes
depth: medium
related_standards: standards/frontend-standards.md, standards/accessibility-standards.md
---

# UX Critique

## Gather First

- target user and primary job-to-be-done
- start-to-finish flow and key screens
- state coverage: loading, empty, error, disabled, permission-denied, success
- interaction details: feedback, confirmation, recoverability, navigation
- constraints: device/responsive contexts, accessibility expectations

## Workflow

1. Evaluate clarity of user intent and next actions at each step.
2. Identify friction points, ambiguity, or cognitive load spikes.
3. Check system feedback quality: progress, success, failure, and recovery behavior.
4. Assess error prevention and recoverability for high-cost actions.
5. Evaluate consistency, hierarchy, and information density.
6. Validate accessibility and keyboard/focus implications for key interactions.
7. Prioritize findings by severity and user/business impact.

## Output Expectations

- severity-ranked findings (critical, major, minor)
- specific evidence tied to screens/interactions
- actionable remediation suggestions
- note of deferred improvements

## Completion Criteria

- critique surfaces concrete, user-centered issues
- recommendations are implementable and prioritized
- edge states are considered, not only happy path

## Anti-Patterns

- vague feedback without evidence
- over-indexing on visual taste instead of task completion quality
- ignoring error and recovery flows
