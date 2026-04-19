# Contributing Skills

Skills in this repo should stay narrow, reusable, and grounded in real project work.

## What Belongs In A Skill

Good candidates:

- repeated multi-step workflows
- tasks that benefit from a stable checklist
- work that crosses several standards or code areas

Poor candidates:

- one-off repo trivia
- broad philosophy already covered in `standards/`
- workflows so vague they do not change agent behavior
- repo-maintenance rules that belong in a single shared maintainer skill

## Recommended Skill Shape

Each skill should usually include:

- short frontmatter with required fields: `name`, `description`, `when_to_use`
- optional frontmatter fields: `category`, `inputs`, `outputs`, `depth`, `related_standards`
- a brief "Gather First" section
- a step-by-step workflow
- output expectations
- completion criteria
- an "Anti-Patterns" section showing common failure modes

## Writing Guidance

- keep the skill concise enough to scan during work
- prefer action verbs and concrete checkpoints
- assume the agent will inspect the local codebase before acting
- avoid embedding project-specific commands unless the skill is intentionally local
- point back to shared standards when detailed policy already exists elsewhere
- favor decision-ready outputs over exploratory prose

## Auto-Detection Guidance

To improve automatic skill invocation:

- include plain-language intent phrases in `when_to_use` (e.g., "review a PR", "evaluate a proposal")
- keep skill names specific and action-oriented
- avoid overlapping names that differ only by wording
- define outputs clearly so agents can announce expected artifacts before starting
- if two skills overlap, state tie-breakers in at least one of them

## Quality Bar

- the skill should materially change how an agent approaches the task
- the workflow should reduce common mistakes
- completion criteria should make it clear when the skill is done
- anti-patterns should make misuse obvious
- the instructions should not require custom tooling or orchestration

## Updating Existing Skills

- tighten wording before adding new sections
- keep names stable unless a rename materially improves clarity
- update related docs or examples if the skill changes expected repo structure
- update `docs/catalog.md` when adding, removing, or materially changing a skill
