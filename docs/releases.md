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
