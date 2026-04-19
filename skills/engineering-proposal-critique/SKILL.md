---
name: engineering-proposal-critique
description: Critique an engineering proposal or RFC for correctness, sequencing, risk, and operability before implementation starts.
when_to_use: Use when reviewing architecture proposals, RFCs, implementation plans, or major technical decisions.
category: analysis
inputs: proposal text, constraints, timeline, known risks
outputs: decision-quality critique with required revisions and residual risk
depth: deep
related_standards: standards/architecture-principles.md, standards/security-standards.md, standards/testing-standards.md, standards/code-review-standards.md
---

# Engineering Proposal Critique

## Gather First

- problem statement and desired outcomes
- constraints: timeline, staffing, reliability targets, compatibility requirements
- current system boundaries and known pain points
- rollout, migration, and rollback assumptions
- test and observability expectations

## Workflow

1. Restate the proposal as a concrete decision and scope boundary.
2. Check whether the proposal solves the right problem or only a symptom.
3. Evaluate architecture choices for changeability, ownership clarity, and operational burden.
4. Challenge authorization, data integrity, and failure-mode handling.
5. Stress-test rollout sequencing, migration safety, and rollback viability.
6. Check verification strategy: what evidence would prove this is safe and effective.
7. Separate **required revisions** from **optional improvements**.
8. Conclude with go/no-go confidence and residual risk.

## Output Expectations

- concise decision summary
- severity-ranked findings with rationale
- required revisions before implementation
- explicit residual risks and monitoring recommendations

## Completion Criteria

- critique identifies concrete risks, not generic concerns
- required changes are distinguishable from optional suggestions
- recommendation is clear enough to decide whether to proceed

## Anti-Patterns

- approving a direction without evaluating rollout and rollback
- focusing on stylistic preferences instead of risk and outcomes
- leaving major assumptions implicit
