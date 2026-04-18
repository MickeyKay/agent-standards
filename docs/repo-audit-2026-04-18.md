# Repository Audit — 2026-04-18

This audit evaluates the current standards/skills repository for coherence, practical utility, and coverage across recurring software/product workflows.

## A. Executive Summary

### Strengths

- **Strong lightweight architecture**: The repo consistently reinforces a layered model (shared standards + reusable skills + thin local agent files) without slipping into orchestration complexity.
- **Clear quality posture for engineering fundamentals**: Core standards (`coding`, `testing`, `security`, `code-review`, `frontend`, `backend`, `accessibility`) are pragmatic and generally actionable.
- **Good maintainability guardrails**: Validator checks, release-note expectations, and contributor guidance create a healthy baseline for change discipline.
- **Skills are focused and concise**: Existing skills are readable and task-oriented, with clear “Gather First / Workflow / Output / Completion” structure.

### Weaknesses

- **Coverage is engineering-heavy and execution-biased**: The current skill set is strongest in implementation and code-quality workflows, but underdeveloped for product strategy, UX critique, and decision framing.
- **Prompt/skill boundary is underdefined**: `prompts/orchestrator.md` is substantial, but there is no explicit operating guidance describing when to choose a prompt versus a skill in downstream practice.
- **Discoverability gap at skill-selection time**: Skills are individually clear, but there is no central “which skill when” index or decision matrix in-repo.
- **Some standards remain principle-level**: A few standards are intentionally concise but may be too generic to strongly alter behavior without examples/checklists.

### Biggest Risks

1. **Under-coverage of high-value non-coding cognitive workflows** leads to repeated ad hoc prompting for strategy, UX, and proposal-quality work.
2. **Skill invocation inconsistency** in downstream repos because trigger guidance is distributed rather than centrally operationalized.
3. **Gradual drift into overlap** across standards/skills/prompts without a stronger taxonomy and ownership map.

### Biggest Opportunities

1. Build a **small, high-leverage “analysis layer”** (strategy, critique, decision framing, proposal review) to complement implementation workflows.
2. Add a **single navigation/index surface** to improve skill discoverability and adoption consistency.
3. Introduce **quality bars + anti-patterns + exemplar outputs** for standards/skills that are currently directionally strong but abstract.

---

## B. Current Inventory

## 1) Core Guidance Layers

- **Root guidance**
  - `README.md`, `AGENTS.md`, `CLAUDE.md`, `CONTRIBUTING.md`
- **Standards**
  - 10 domain standards + standards index in `standards/README.md`
- **Skills**
  - 7 reusable skills in `skills/*/SKILL.md`
- **Prompts**
  - 1 orchestrator prompt in `prompts/orchestrator.md`
- **Templates**
  - Downstream project templates for root agent/setup files
- **Operational docs**
  - architecture, usage, sync strategy, releases, contributing-skills, spec pipeline
- **Scripts**
  - bootstrap/install/update/sync/validation helpers

## 2) Functional Category Grouping

### Engineering standards (strongest area)
- Coding, testing, security, code review
- Frontend/backend specialization
- Accessibility and migration safety
- Git collaboration defaults

### Engineering execution skills (strong coverage)
- PR review
- Bug triage
- Refactor safely
- Test generation
- Next.js feature build
- Figma-to-code
- Standards repo evolution (meta-maintenance)

### Product/spec shaping (limited but promising)
- Orchestrator prompt and spec pipeline docs

### Missing/underweight categories
- Staff-level engineering proposal critique
- Product strategy and opportunity framing (beyond feature planning)
- UX/product experience critique skill
- Design QA / implementation fidelity verification as a reusable skill
- Decision-recording and tradeoff framing skill
- Debugging/investigation playbook for complex, non-repro issues

---

## C. Findings

## Strong assets worth preserving

1. **Repo philosophy coherence is unusually high**
   - The docs consistently advocate “lightweight, composable, non-orchestration” and this is reflected in structure and scripts.

2. **Standards corpus has good practical defaults**
   - Clear emphasis on authorization, reliability, maintainability, and behavior-focused testing.
   - Strong portability across modern web/TypeScript teams without being tied to one stack.

3. **Skill template quality is solid**
   - The repeated shape (“Gather First / Workflow / Output / Completion”) is concise and reusable.
   - Existing skills likely improve outcome quality versus free-form prompting.

4. **Operational maturity is good for a shared standards repo**
   - `scripts/validate-repo.sh` provides a useful integrity baseline.
   - `docs/releases.md` establishes downstream communication discipline.

## Weak/redundant assets worth revising

1. **`prompts/orchestrator.md` is valuable but oversized for some contexts**
   - It is comprehensive, but can feel heavier than “lightweight primitives” philosophy unless paired with a short-mode variant.
   - Recommendation: keep current version, add a compact sibling variant (e.g., `orchestrator-lite.md`) for faster iterative use.

2. **Potential overlap between standards and skills in review/testing themes**
   - Not currently severe, but as more skills are added this may grow.
   - Recommendation: explicitly assign “policy lives in standards; procedure lives in skills” in one central index doc.

3. **Some standards may be too principle-level to change behavior in weaker teams**
   - Example risk: teams read guidance but lack concrete review checklists or examples.
   - Recommendation: append short “Applied checklist” sections to highest-leverage standards (code review, testing, security).

## Structural/organizational issues

1. **No “catalog index” for skills and prompts**
   - Users can inspect folders, but there is no single discoverability document with triggers, expected outputs, and adjacent standards.

2. **Taxonomy is implicit, not explicit**
   - The repo effectively contains “standards / skills / prompts / templates / ops docs,” but category intent is spread across README and docs.

3. **No confidence or maturity labeling**
   - Skills/standards are treated equally even though some are more battle-tested than others.

## Missing category/workflow coverage

Most meaningful gaps relative to your stated high-value recurring needs:

1. **Staff-level engineering critique**
   - Missing a dedicated skill for architecture/proposal critique with explicit risk, sequencing, and operability lenses.

2. **Product strategy / opportunity analysis**
   - Current prompt supports spec shaping, but not full opportunity evaluation (market/user signal, ROI hypotheses, moat/risk framing).

3. **UX/product experience critique**
   - Accessibility and figma-to-code exist, but there is no broad UX critique workflow for journeys, friction, and interaction quality.

4. **Design-to-code QA loop**
   - Figma-to-code covers implementation, but not post-build design QA/fidelity validation as a repeatable skill.

5. **Decision framing and tradeoff records**
   - Missing a reusable decision memo/ADR-lite skill to force explicit option comparison and rationale capture.

---

## D. Recommended Target Shape

## 1) Taxonomy (small, high-signal)

- `standards/` → durable policy and quality bars
- `skills/engineering/` → implementation and code quality workflows
- `skills/analysis/` → critique, strategy, opportunity, decision framing
- `skills/design-product/` → UX critique, design QA, design-to-code workflows
- `prompts/` → reusable structured thinking inputs (when no workflow automation needed)
- `docs/catalog.md` → single index for selection and navigation

(You can migrate gradually without breaking current paths by adding category tags first, then folder moves later.)

## 2) Minimum recommended new skills (high leverage)

1. **engineering-proposal-critique**
   - For staff-level review of RFCs/proposals.
   - Outputs: risks, missing constraints, alternative paths, rollout/test/operability concerns.

2. **product-opportunity-assessment**
   - For evaluating problem significance, user segment fit, expected impact, and downside risk.
   - Outputs: opportunity brief, hypothesis tree, confidence level, next experiments.

3. **ux-critique**
   - For evaluating user journey quality, friction, feedback loops, and failure states.
   - Outputs: severity-ranked UX findings, principle violations, actionable remediations.

4. **decision-framing**
   - For options analysis and explicit tradeoff capture.
   - Outputs: decision statement, options matrix, recommendation, residual risk.

5. **design-qa**
   - For validating implemented UI against intent (layout, states, interactions, accessibility).
   - Outputs: fidelity diffs, blocking vs non-blocking gaps, ship-readiness summary.

## 3) Standards upgrades (not expansion-heavy)

- Add short **“Applied Checklist”** sections to:
  - `standards/code-review-standards.md`
  - `standards/testing-standards.md`
  - `standards/security-standards.md`
- Keep each checklist to 8–12 bullets max to preserve brevity.

## 4) Discoverability improvements

- Add `docs/catalog.md` with:
  - “When to use” matrix
  - Inputs required
  - Typical outputs
  - Related standards links
  - Estimated effort/time class (quick / medium / deep)

---

## E. Prioritized Improvement Plan

## P0 — Quick wins (high impact, low cost)

1. **Create a repo catalog/index (`docs/catalog.md`)**
   - **Why it matters**: improves consistent skill/prompt selection and reduces ad hoc usage.
   - **Problem solved**: discoverability + invocation inconsistency.
   - **Size**: quick win.

2. **Add one flagship missing skill: `engineering-proposal-critique`**
   - **Why it matters**: directly addresses staff-level critique need; high leverage across engineering planning.
   - **Problem solved**: weak support for proposal-quality analysis.
   - **Size**: quick win.

3. **Add “Applied Checklist” section to code review standard**
   - **Why it matters**: turns good principles into repeatable reviewer behavior.
   - **Problem solved**: abstraction gap in practical review execution.
   - **Size**: quick win.

## P1 — Near-term expansion (moderate effort)

4. **Add `ux-critique` and `decision-framing` skills**
   - **Why it matters**: broadens repository value beyond coding workflows.
   - **Problem solved**: missing UX and decision-tradeoff support.
   - **Size**: medium.

5. **Split orchestrator into full + lite variants**
   - **Why it matters**: supports both deep planning and faster loops.
   - **Problem solved**: verbosity/weight mismatch across contexts.
   - **Size**: medium.

6. **Introduce skill metadata conventions**
   - Add optional metadata fields: `category`, `inputs`, `outputs`, `depth`, `related_standards`.
   - **Why it matters**: improves machine/human navigation and future tooling.
   - **Problem solved**: implicit taxonomy and uneven expectations.
   - **Size**: medium.

## P2 — Structural hardening (larger refactor)

7. **Restructure skill folders by category (engineering / analysis / design-product)**
   - **Why it matters**: long-term coherence and scalability.
   - **Problem solved**: flat namespace that becomes noisy with growth.
   - **Size**: larger refactor (can be staged with aliases/redirect notes).

8. **Add maturity labels and periodic audit cadence**
   - **Why it matters**: keeps quality high as catalog grows.
   - **Problem solved**: equal-weight treatment of unevenly validated assets.
   - **Size**: medium-large.

---

## F. Optional Concrete Follow-Through

## 1) Example file structure (staged target)

```text
skills/
  engineering/
    pr-review/
    bug-triage/
    refactor-safely/
    test-generation/
    engineering-proposal-critique/
  design-product/
    figma-to-code/
    design-qa/
    ux-critique/
  analysis/
    decision-framing/
    product-opportunity-assessment/
```

## 2) Lightweight skill-writing convention additions

Add to `docs/contributing-skills.md`:

- mandatory: `name`, `description`, `when_to_use`
- optional: `category`, `inputs`, `outputs`, `depth`
- max target length guideline (e.g., 80–140 lines)
- include one “anti-patterns” block for each skill

## 3) Suggested README/index improvement

Add a “Choose a workflow” section in root README with a compact matrix linking:

- intent → recommended skill/prompt
- expected artifact produced
- related standards

This makes first-use adoption dramatically easier in downstream repos.
