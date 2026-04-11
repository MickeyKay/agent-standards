# Sync Strategy

The safest sync model is selective, additive, and reviewable.

## Principles

- sync only shared material that truly benefits from central ownership
- keep project-local files thin and repo-owned
- avoid destructive overwrites by default
- review diffs before replacing existing project conventions

## Recommended Split

Good sync candidates:

- `standards/`
- `skills/`
- shared setup docs meant for downstream reuse

Usually local-only:

- root `AGENTS.md`
- root `CLAUDE.md`
- project README
- app-specific architecture notes
- environment or deployment instructions

## Avoiding Drift

Pick one of these operating models per file or directory:

### Owned locally

The downstream repo copies the file once and evolves it independently.

### Refreshed from shared snapshots

The downstream repo periodically re-downloads this repository and refreshes selected files.

### Local wrapper around shared material

The downstream repo keeps a thin local file that points to synced shared docs plus a short set of repo-specific deltas.

This third model is the best default for root agent files.

## Suggested Sync Process

1. Sync shared files into a clearly named folder such as `standards/` or `docs/standards/`.
2. Review the diff.
3. Update any local references that depend on renamed files.
4. Note exceptions in local agent files instead of editing synced files immediately.
5. If a local exception becomes common across repos, move it back into the shared standards repo.

Practical script guidance:

- use `bash path/to/agent-standards/scripts/sync-standards.sh --dry-run .` to preview from inside the target repo
- use `bash path/to/agent-standards/scripts/sync-standards.sh .` for additive sync only
- use `bash path/to/agent-standards/scripts/sync-standards.sh --update .` when you intentionally want changed shared files refreshed
- review `docs/releases.md` before update syncs across many repos

## When To Copy Instead

Copy instead of sync when:

- the project operates under unusual compliance or architecture constraints
- the team wants to diverge materially from shared defaults
- the maintenance burden of sync is higher than the expected benefit

## Context Management Guidance

To keep agent context efficient in downstream repos:

- do not paste long standards into root agent files
- reference local directories that agents can inspect as needed
- keep synced skills narrow and task-oriented
- remove unused synced material instead of keeping everything by default
