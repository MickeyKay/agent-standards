---
name: evolve-standards-repo
description: Safely evolve this shared standards repository while keeping docs, templates, skills, and validation aligned.
when_to_use: Use when changing the structure, standards, skills, scripts, templates, or operating model of this repository.
---

# Evolve Standards Repo

## Gather First

- the requested change and whether it affects standards, skills, scripts, templates, docs, or repo structure
- existing files that already cover adjacent guidance
- downstream impact: copy-only, sync-relevant, or structural
- validation steps needed after the change

## Workflow

1. Find the smallest existing file that should own the change before adding a new one.
2. Keep root `AGENTS.md` and `CLAUDE.md` short; move durable detail into `standards/`, `skills/`, or `docs/`.
3. If the repository shape or usage model changes, update `README.md` and the relevant docs.
4. If downstream consumers may need to know, update `docs/releases.md`.
5. If shared expectations for downstream repos changed, update the templates.
6. If a new repeated workflow is introduced, add or update a skill instead of expanding root files.
7. If the expected repo shape changes, update `scripts/validate-repo.sh`.
8. Run validation before finishing.

## Output Expectations

- the requested change implemented in the correct layer
- companion docs updated where needed
- downstream impact documented when relevant
- validation completed or any gap called out explicitly

## Completion Criteria

- the repo remains lightweight and modular
- no major guidance is duplicated across multiple layers unnecessarily
- validator and docs reflect the new reality
