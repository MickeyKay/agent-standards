# Project Agent Setup

This repository uses a thin local agent setup backed by shared standards and reusable skills.

Default import model:

- download or extract a snapshot of the shared `agent-standards` repo
- run bootstrap or sync scripts from that snapshot against this repo
- keep this repo's root agent files locally owned

Important:

- bootstrap generates valid-but-incomplete root agent files
- replace defaults only when the repo has real local facts
- do not invent repo details just to make the files look complete
- keep unresolved areas marked as `not configured yet` or `not recorded yet` until real decisions exist

## Recommended Local Files

- `AGENTS.md`: repo-specific instructions for Codex-style agents
- `CLAUDE.md`: repo-specific instructions for Claude Code
- `standards/` or `docs/standards/`: copied or synced shared standards
- `skills/` or repo-specific skill location: copied or synced reusable workflows

## Setup Checklist

1. Choose whether shared standards are copied once or periodically synced.
2. Fill in repo-specific commands in `AGENTS.md` and `CLAUDE.md`.
3. Add short architecture notes and high-risk areas.
4. Record the shared source repo and import date in this document or `docs/agent-setup.md`.
5. Record any local exceptions instead of rewriting shared standards immediately.
6. Keep root agent files short and high-signal.

## Suggested Repo-Specific Details To Fill In

- development, test, lint, typecheck, and build commands
- framework and hosting model
- auth and permission model
- major integrations
- deployment or compliance constraints
