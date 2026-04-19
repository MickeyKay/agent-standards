---
name: decision-framing
description: Structure a decision with clear options, tradeoffs, and recommendation so teams can move forward with explicit rationale.
when_to_use: Use when multiple viable paths exist and a decision needs to be made with visible tradeoffs.
category: analysis
inputs: decision statement, options, constraints, success criteria
outputs: options matrix, recommendation, and residual risk record
depth: medium
related_standards: standards/architecture-principles.md, standards/code-review-standards.md
---

# Decision Framing

## Gather First

- exact decision to be made
- success criteria and non-negotiable constraints
- viable options (including status quo)
- timing and reversibility constraints
- major stakeholder concerns

## Workflow

1. Write the decision as a clear yes/no or choose-one statement.
2. Define criteria that matter (impact, cost, complexity, risk, time-to-value, reversibility).
3. Evaluate each option against the criteria with concise evidence.
4. Call out assumptions and uncertainty explicitly.
5. Identify second-order effects (operational burden, migration complexity, team cognitive load).
6. Recommend one option and explain why alternatives were not chosen.
7. Record residual risk and trigger conditions for revisiting the decision.

## Output Expectations

- options matrix with tradeoffs
- recommended path and rationale
- risks, assumptions, and revisit triggers

## Completion Criteria

- decision is explicit and actionable
- tradeoffs are visible and evidence-based
- follow-up risk ownership is clear

## Anti-Patterns

- pretending uncertainty does not exist
- selecting an option without criteria
- refusing to recommend a path when evidence is sufficient
