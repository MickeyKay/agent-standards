# AGENTS.md

This repository uses shared engineering standards plus a thin local agent file for repo-specific guidance.

## Shared Standards

- Local shared standards live in: `[path to synced or copied standards directory]`
- Local reusable skills live in: `[path to synced or copied skills directory]`

Agents should use shared standards for durable guidance and keep this file focused on repo-specific deltas.

## Repo-Specific Commands

- Dev: `[command]`
- Lint: `[command]`
- Test: `[command]`
- Typecheck: `[command]`
- Build: `[command]`

## Local Architecture Notes

- App/framework: `[e.g. Next.js app router, Express API, Remix]`
- Key domains: `[billing, auth, admin, reporting]`
- Sensitive flows: `[payments, roles, PII, destructive actions]`

## Local Constraints And Exceptions

- `[constraint or deployment limitation]`
- `[approved exception to shared standards]`
- `[legacy area that needs incremental migration]`

## Working Expectations

- Prefer existing local patterns before introducing new ones.
- Keep server-side authorization authoritative.
- Update local docs when structural or workflow assumptions change.
