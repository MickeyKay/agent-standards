# CLAUDE.md

This repository maintains shared engineering standards and reusable agent workflows for other software projects.

## Working Style For This Repo

- Keep the system intentionally lightweight.
- Treat `standards/` as the primary home for shared engineering guidance.
- Treat `skills/` as reusable workflow building blocks.
- Keep `CLAUDE.md` and `AGENTS.md` short; push detailed guidance into shared docs instead.
- Record notable downstream-facing changes in `docs/releases.md`.

## When Making Changes

- Update `docs/` when the repository structure or recommended workflow changes.
- Keep templates thin and repo-specific, with shared guidance referenced rather than duplicated.
- Prefer practical conventions that generalize across modern TypeScript and web teams.
- Keep examples and contributor docs aligned with the actual repo shape.
- Avoid adding orchestration or abstraction unless it materially reduces downstream maintenance.

## Skill Auto-Detection Expectations

- Use `docs/catalog.md` to route work to the best matching skill by default, including when users describe intent without naming a skill.
- Announce skill choice briefly (skill + reason + expected output).
- Prefer the smallest applicable skill and avoid chaining many workflows unless needed for risk reduction.
- If no skill fits, continue normally and call out the gap for future skill additions.
