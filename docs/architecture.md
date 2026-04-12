# Architecture

This repository uses a layered model so shared guidance can be reused across many repos without turning agent instructions into a second framework.

## Layers

### 1. Personal or global agent preferences

These live outside this repository and remain tool-specific.

Examples:

- a developer's personal Codex preferences
- a user's global Claude Code defaults
- local machine habits such as editor choice or shell preferences

This layer should shape tone and operator preferences, not replace project standards.

### 2. Shared cross-project standards repo

This repository is the stable shared layer.

It contains:

- engineering standards in `standards/`
- reusable workflows in `skills/`
- reusable thinking prompts in `prompts/`
- thin project templates in `templates/`
- usage and sync guidance in `docs/`

This is the canonical place for conventions that should be reused across multiple repos.

### 3. Project-local agent files

Each application repo should keep local root files such as `AGENTS.md` and `CLAUDE.md`, but they should stay intentionally thin.

Project-local files should contain:

- repo-specific commands
- local architecture notes
- deployment or environment constraints
- exceptions to shared standards

They should not restate every shared coding rule.

### 4. Reusable skills

Skills capture repeatable workflows that agents can apply on demand.

Good skill candidates:

- PR review
- bug triage
- safe refactors
- test generation
- design-to-implementation workflows

Skills keep workflow instructions modular, discoverable, and easier to maintain than long root files.

## Why This Stays Lightweight

This repo is deliberately not:

- a task router
- an orchestration engine
- a policy enforcement system
- a generated documentation maze

The operating model is simple:

- keep standards centralized
- keep local project instructions thin
- sync or copy only what a project needs
- let agents use native tool conventions

## Recommended Directory Responsibilities

- `standards/`: durable engineering standards
- `skills/`: reusable workflows
- `prompts/`: reusable thinking inputs for shaping specs and plans
- `templates/`: downstream starting points
- `docs/`: architecture, usage, and sync strategy
- `scripts/`: small helper scripts, not orchestration

## Optional Future Extensions

Future additions are reasonable only if they stay small and clearly useful.

Examples:

- a changelog for downstream sync consumers
- a versioned release process for standards snapshots
- a narrower set of language-specific standards

Avoid adding any extension that requires a custom runtime, repo registry, or central coordination service.

Current lightweight extensions in this repo stay within that boundary:

- `docs/releases.md` for downstream-facing change notes
- `docs/examples/` for concrete adoption patterns
- a simple validation workflow to catch missing files and script regressions
