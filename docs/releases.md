# Releases

This repository uses a lightweight change log for downstream consumers. The goal is to make copy and sync decisions easier without introducing heavy release process.

## How To Use This File

- Add an entry when a change affects standards, skills, templates, or scripts that downstream repos may consume.
- Prefer concise notes over exhaustive history.
- Call out rename, removal, and migration-sensitive changes explicitly.

## Entry Format

```text
## YYYY-MM-DD
- Added:
- Changed:
- Downstream impact:
```

## 2026-04-11

- Added: initial repository structure, shared standards, reusable skills, downstream templates, Claude settings template, helper scripts, migration standards, contributor guidance, example downstream layout, and validation workflow.
- Changed: sync guidance now distinguishes additive sync from explicit update sync.
- Downstream impact: new consumers can bootstrap directly; existing repos can selectively sync standards and skills and choose whether to refresh changed files with `--update`.

## 2026-04-11

- Added: explicit downloaded-snapshot workflow guidance for bootstrapping and refreshing from inside a target repo.
- Changed: documentation now treats downloaded snapshots as the default consumption path instead of implying a persistent linked copy.
- Downstream impact: the simplest recommended setup is now to download a snapshot, run bootstrap or sync from it, and optionally discard the snapshot afterward.

## 2026-04-11

- Added: `standards/git-standards.md` covering semantic branch naming, conventional commits, PR hygiene, merge strategy, and ticket linking defaults.
- Changed: standards coverage now explicitly includes shared git and collaboration conventions.
- Downstream impact: downstream repos that do not already define local git workflow conventions can adopt this file as the shared default.

## 2026-04-11

- Added: `scripts/init-framework.sh` for one-line bootstrap via `curl ... | bash -s .`.
- Changed: README and usage docs now surface install instructions near the top and treat the curl-based installer as the fastest path.
- Downstream impact: new projects can initialize directly from inside the target repo without manually downloading a snapshot first.

## 2026-04-11

- Added: `scripts/update-framework.sh` for one-line refresh via `curl ... | bash -s -- --dry-run .` or `--update .`.
- Changed: README and usage docs now give the same curl-style experience for both install and update flows.
- Downstream impact: existing projects can refresh shared standards and skills without manually downloading a snapshot first.
