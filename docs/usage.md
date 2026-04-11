# Usage

This repository is meant to be consumed in small pieces. Most downstream repos should copy or sync only the files they actually need.

## Recommended Workflow For A New Project

1. Bootstrap the repo with `scripts/bootstrap-project.sh`.
2. Fill in the placeholders in the generated project-local files.
3. Copy or sync a small set of shared standards that match the project.
4. Add only the skills the team expects agents to use regularly.
5. Keep local agent files focused on repo-specific deltas.
6. Review `docs/releases.md` before later refreshes from the shared repo.

Suggested first-pass imports for a modern web app:

- `standards/coding-standards.md`
- `standards/testing-standards.md`
- `standards/security-standards.md`
- `standards/code-review-standards.md`
- `standards/accessibility-standards.md`
- `skills/pr-review/`
- `skills/refactor-safely/`
- `skills/test-generation/`

## Recommended Workflow For An Existing Project

1. Start with the thin templates, not a full standards dump.
2. Compare existing local conventions against shared standards.
3. Import only the standards that reduce ambiguity or repeated review comments.
4. Sync skills that fit current development workflows.
5. Capture repo-specific exceptions in local files instead of forking shared standards immediately.

For mature repos, gradual adoption is usually better than broad replacement.

See [docs/examples/downstream-layout.md](examples/downstream-layout.md) for a concrete downstream shape that keeps root files thin.

## Copy vs Sync

### Copy when:

- the repo is mostly independent
- the team expects to customize heavily
- strict cross-repo alignment is not important

### Sync when:

- many repos should stay aligned
- the same standards are being updated centrally
- the team wants low-effort refreshes over time

Many teams will use a hybrid model:

- local root agent files are owned by the repo
- shared standards and skills are periodically synced

## What Should Remain Local

Keep these in each downstream repo:

- build, test, lint, and dev commands
- architecture notes specific to that codebase
- environment and deployment constraints
- exceptions to shared standards
- library or framework choices that are not universal

## Keeping Agent Context Small

Avoid dumping all standards into root agent files.

Prefer:

- short `AGENTS.md` and `CLAUDE.md`
- direct references to local standards folders
- skills for multi-step workflows
- project notes that focus on deltas and constraints

Good pattern:

- root file says where standards live
- standards carry durable rules
- skills carry reusable procedures

This keeps agent context more relevant and reduces contradictory duplication.
