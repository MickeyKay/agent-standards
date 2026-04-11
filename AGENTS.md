# AGENTS.md

This repository is the shared source of truth for reusable agent standards, workflows, and project templates.

## How To Work In This Repo

- Keep this repo lightweight. Prefer small, composable primitives over orchestration layers.
- Put durable engineering guidance in `standards/`.
- Put reusable workflows in `skills/<skill-name>/SKILL.md`.
- Keep root-level agent files concise and high-signal.
- Use `docs/` to explain structure, usage, and sync decisions.
- Record downstream-impacting changes in `docs/releases.md`.

## Change Expectations

- When adding or restructuring folders, update [docs/architecture.md](docs/architecture.md) and any affected usage docs.
- When adding repeated workflow guidance, prefer a skill over expanding `AGENTS.md`.
- When changing standards, keep templates and scripts aligned with the new shape.
- When skill conventions evolve, update the contributor docs in `docs/contributing-skills.md`.
- Avoid project-specific assumptions unless they are clearly marked as templates or examples.

## Quality Bar

- Optimize for portability, maintainability, and real-world reuse.
- Prefer clear examples over broad theory.
- Do not duplicate the same guidance across Codex and Claude files when shared docs can carry it once.
