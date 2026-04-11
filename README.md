# Agent Standards

Shared standards, reusable workflows, and lightweight agent-facing instructions for software projects.

This repository is designed to be a practical source of truth for teams that want consistent engineering guidance across many repos without building a heavy orchestration system. It works well with Codex first, supports Claude Code cleanly, and keeps most guidance agent-agnostic.

## What This Repo Is For

Use this repository to centralize:

- shared coding and review standards
- reusable agent workflows captured as skills
- thin project templates for `AGENTS.md` and `CLAUDE.md`
- simple bootstrap and sync scripts for downstream repos

The goal is not to control every agent action. The goal is to give agents a stable, high-signal base layer that can be reused across products.

## Philosophy

This repo follows a layered model:

1. Shared standards live here and change deliberately.
2. Each application repo keeps thin local agent files for repo-specific commands, architecture notes, and constraints.
3. Reusable workflows belong in skills, not in long root agent files.

That keeps the system maintainable:

- shared guidance stays in one place
- project-specific deltas stay local
- agents get small, relevant context instead of duplicated prose

## How Downstream Repos Should Consume It

Use this repo as a package of text assets and scripts, not as a runtime dependency.

Recommended usage modes:

### 1. Copy into a new repo

Best when starting greenfield work or when the project wants to own its files after setup.

- copy `templates/AGENTS.project-template.md` to `AGENTS.md`
- copy `templates/CLAUDE.project-template.md` to `CLAUDE.md`
- copy selected files from `standards/`
- copy selected skills into a local `.codex/skills/` or similar repo-owned location if needed

### 2. Sync selected files into an existing repo

Best when multiple repos should stay aligned over time.

- sync shared standards into a local `docs/standards/` or `standards/` folder
- sync shared skills into a repo-owned skill directory
- keep local root agent files thin and repo-specific

### 3. Bootstrap from templates

Best when you want a fast, repeatable setup path.

- use `scripts/bootstrap-project.sh` to scaffold thin project files
- include the minimal Claude settings template
- use `scripts/sync-standards.sh` later to refresh shared material

## Release And Sync Expectations

This repo keeps change management lightweight, but downstream consumers still need predictable notes.

- record downstream-relevant changes in [docs/releases.md](docs/releases.md)
- prefer additive changes where practical
- call out renames, removals, and stricter expectations clearly
- treat sync impact as part of the change, not follow-up work

## Shared vs Tool-Specific Material

### Shared

- `standards/` contains the cross-project engineering guidance
- `docs/` explains the model, usage patterns, and sync strategy
- `templates/` define thin downstream project files
- `CONTRIBUTING.md` defines the repo’s change contract for agent-driven maintenance

### Codex-specific

- `AGENTS.md` is the root entry point for Codex-style agent guidance
- `skills/` follows the Codex skill convention with per-skill `SKILL.md`

### Claude-specific

- `CLAUDE.md` is the root entry point for Claude Code
- `claude/settings.template.json` shows a minimal project-level Claude settings shape

The intent is to keep tool-specific files small and let the substantive standards remain shared.

## Repository Layout

```text
/
  README.md
  AGENTS.md
  CLAUDE.md
  docs/
  standards/
  skills/
  claude/
  templates/
  scripts/
  .github/
```

## Evolving The Standards

Treat this repo like a consulting asset, not a dumping ground.

- change standards when repeated project work reveals a durable pattern
- prefer editing an existing standard over adding a new file
- keep examples concrete and advice opinionated
- move repeated workflow guidance into skills
- keep root agent files concise even as the repo grows

When standards change:

- update affected docs and templates in the same change
- call out migration impact for downstream repos
- avoid speculative abstractions that do not reduce real maintenance cost

## Recommended Starting Point

For a new repo:

1. Run `scripts/bootstrap-project.sh /path/to/target-repo`.
2. Fill in the project-local placeholders in `AGENTS.md`, `CLAUDE.md`, and `README`.
3. Copy or sync only the standards and skills the project will actually use.

For an existing repo:

1. Keep existing local conventions that are working.
2. Import the thin project templates.
3. Sync in selected standards and skills.
4. Resolve conflicts explicitly instead of forcing a broad rewrite.

See [docs/usage.md](docs/usage.md) and [docs/sync-strategy.md](docs/sync-strategy.md) for the detailed workflow.
See [docs/releases.md](docs/releases.md) for downstream-facing change notes and [docs/examples/downstream-layout.md](docs/examples/downstream-layout.md) for a concrete consumer layout.

## Default Downstream Ownership Model

The default convention in this repository is:

- root `AGENTS.md` and `CLAUDE.md` remain owned by each downstream repo
- shared `standards/` and `skills/` are the syncable layer

That split keeps local operating context local while allowing shared policy and workflows to evolve centrally.
