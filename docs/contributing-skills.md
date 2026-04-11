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

- short frontmatter with name, description, and when-to-use guidance
- a brief "Gather First" section
- a step-by-step workflow
- output expectations
- completion criteria

## Writing Guidance

- keep the skill concise enough to scan during work
- prefer action verbs and concrete checkpoints
- assume the agent will inspect the local codebase before acting
- avoid embedding project-specific commands unless the skill is intentionally local
- point back to shared standards when detailed policy already exists elsewhere

## Quality Bar

- the skill should materially change how an agent approaches the task
- the workflow should reduce common mistakes
- completion criteria should make it clear when the skill is done
- the instructions should not require custom tooling or orchestration

## Updating Existing Skills

- tighten wording before adding new sections
- keep names stable unless a rename materially improves clarity
- update related docs or examples if the skill changes expected repo structure
