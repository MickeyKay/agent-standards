# Usage

This repository is meant to be consumed in small pieces. The default workflow is to download a snapshot into a target repo, run bootstrap or sync from that snapshot, and keep the target repo's root files locally owned.

## Fastest Install

From inside the target repo:

```bash
curl -sSL https://raw.githubusercontent.com/MickeyKay/agent-standards/main/scripts/init-framework.sh | bash -s .
```

That downloads a temporary snapshot of this repo, bootstraps the current project, and cleans up afterward.

## Fastest Refresh

From inside the target repo:

```bash
curl -sSL https://raw.githubusercontent.com/MickeyKay/agent-standards/main/scripts/update-framework.sh | bash -s -- --dry-run .
curl -sSL https://raw.githubusercontent.com/MickeyKay/agent-standards/main/scripts/update-framework.sh | bash -s -- --update .
```

That downloads a temporary snapshot, runs the shared sync logic against the current project, and cleans up afterward.

## Recommended Workflow For A New Project

1. From inside the target repo, download or extract a snapshot of this repository.
2. Run `curl -sSL https://raw.githubusercontent.com/MickeyKay/agent-standards/main/scripts/init-framework.sh | bash -s .`.
3. Fill in the placeholders in the generated project-local files.
4. Keep local agent files focused on repo-specific deltas.
5. Add only the skills and standards the team expects to use regularly.
6. Record the source and import date in `docs/agent-setup.md`.

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

1. Download or extract a fresh snapshot of this repository.
2. Preview changes with `curl -sSL https://raw.githubusercontent.com/MickeyKay/agent-standards/main/scripts/update-framework.sh | bash -s -- --dry-run .`.
3. Compare existing local conventions against shared standards before applying updates.
4. Apply additive sync or explicit update sync only for files you want refreshed.
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
- shared standards and skills are periodically refreshed from downloaded snapshots of this repo
- reusable prompts can be copied in when a team wants a stable thinking or spec-shaping input

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
- prompts carry reusable thinking structures when a team wants repeatable spec shaping without adding a framework

This keeps agent context more relevant and reduces contradictory duplication.
