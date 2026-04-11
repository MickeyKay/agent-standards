# Project Agent Setup

This repository uses a thin local agent setup backed by shared standards and reusable skills.

## Recommended Local Files

- `AGENTS.md`: repo-specific instructions for Codex-style agents
- `CLAUDE.md`: repo-specific instructions for Claude Code
- `standards/` or `docs/standards/`: copied or synced shared standards
- `skills/` or repo-specific skill location: copied or synced reusable workflows

## Setup Checklist

1. Choose whether shared standards are copied once or periodically synced.
2. Fill in repo-specific commands in `AGENTS.md` and `CLAUDE.md`.
3. Add short architecture notes and high-risk areas.
4. Record any local exceptions instead of rewriting shared standards immediately.
5. Keep root agent files short and high-signal.

## Suggested Repo-Specific Details To Fill In

- development, test, lint, typecheck, and build commands
- framework and hosting model
- auth and permission model
- major integrations
- deployment or compliance constraints
