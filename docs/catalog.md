# Skills And Prompts Catalog

Use this catalog to pick the **smallest useful workflow primitive** for a task.

## How To Choose Quickly

1. Start with the user intent.
2. If a reusable procedural workflow exists, use a skill.
3. If the task is mainly idea-shaping or early planning, use a prompt.
4. If more than one skill applies, run the one that best handles the highest-risk concern first.

## Auto-Detection Rule (Default)

Agents should proactively select and apply a matching skill when user intent clearly maps to one in this catalog, even if the user does not explicitly name the skill.

When a skill is auto-selected, briefly state:

- which skill is being used
- why it was selected
- what output artifact will be produced

If no skill is a clean fit, proceed normally and state the gap.

## Workflow Routing Matrix

| Intent / Task Pattern | Primary Skill or Prompt | Typical Inputs | Output Artifact | Effort |
| --- | --- | --- | --- | --- |
| Review a PR or diff for risk and correctness | `skills/pr-review/SKILL.md` | PR summary, diff, tests, screenshots | Severity-ranked findings with required vs optional items | quick |
| Investigate a bug or flaky behavior | `skills/bug-triage/SKILL.md` | report, repro details, logs, recent changes | root-cause hypothesis + smallest fix path | quick |
| Clean up code without behavior changes | `skills/refactor-safely/SKILL.md` | behavior invariants, tests, risk areas | staged refactor plan + verification notes | medium |
| Add or improve tests for risky behavior | `skills/test-generation/SKILL.md` | behavior, current coverage, known regressions | focused tests + coverage rationale | quick |
| Build/extend a Next.js feature | `skills/nextjs-feature-build/SKILL.md` | feature goal, routes, data/auth constraints | end-to-end implementation slice plan | medium |
| Implement UI from Figma/handoff | `skills/figma-to-code/SKILL.md` | design source, component scope, states | implementation plan + code-ready slices | medium |
| Critique an engineering proposal or RFC | `skills/engineering-proposal-critique/SKILL.md` | proposal/RFC text, constraints, timeline | risk register + decision-quality critique | deep |
| Frame a product opportunity before committing build | `skills/product-opportunity-assessment/SKILL.md` | target segment, problem statement, goals | opportunity brief + recommendation | deep |
| Critique UX quality of a flow or screen | `skills/ux-critique/SKILL.md` | flow description, screens, user goals | UX findings by severity + fix recommendations | medium |
| Compare options and force a decision | `skills/decision-framing/SKILL.md` | decision statement, constraints, options | options matrix + recommended path | medium |
| Validate design fidelity after implementation | `skills/design-qa/SKILL.md` | design source, implemented UI, state coverage | fidelity gaps + ship-readiness summary | medium |
| Turn a high-level idea into a buildable plan | `prompts/orchestrator.md` | idea, constraints, context | phased implementation plan | deep |

## Related Standards Map

- Code quality and maintainability: `standards/coding-standards.md`
- Review expectations: `standards/code-review-standards.md`
- Security/authorization baselines: `standards/security-standards.md`
- Testing strategy: `standards/testing-standards.md`
- UX and accessibility quality: `standards/frontend-standards.md`, `standards/accessibility-standards.md`
- Architecture/system boundaries: `standards/architecture-principles.md`

## Intent Signals (For Agents)

Use these phrase families as routing hints when users do not name a skill.

- **“review this PR / diff / patch”** → `pr-review`
- **“why is this broken / flaky / failing intermittently”** → `bug-triage`
- **“clean this up without changing behavior”** → `refactor-safely`
- **“add tests / increase coverage for this change”** → `test-generation`
- **“build this feature in Next.js”** → `nextjs-feature-build`
- **“implement this design / Figma”** → `figma-to-code`
- **“evaluate this RFC / proposal”** → `engineering-proposal-critique`
- **“is this worth building / where is the opportunity”** → `product-opportunity-assessment`
- **“critique the UX / journey / flow”** → `ux-critique`
- **“help me decide between options”** → `decision-framing`
- **“did we match the design”** → `design-qa`
- **“turn this idea into a plan/spec”** → `prompts/orchestrator.md`

## Selection Tie-Breakers

When multiple candidates match:

1. prioritize correctness/safety risk over polish
2. prioritize narrowing scope over expanding features
3. prefer the skill that produces the most decision-ready artifact
4. avoid chaining more than two skills unless explicitly needed
