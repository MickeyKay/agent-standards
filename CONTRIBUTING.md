# Contributing

This repository is maintained primarily through agent-driven edits. Keep changes easy for both agents and humans to follow.

## Change Rules

- Keep `AGENTS.md` and `CLAUDE.md` concise.
- Prefer editing an existing standard over adding a new top-level document.
- Put reusable workflows in `skills/`, not in root agent files.
- Keep project-specific assumptions out of shared standards unless they are clearly examples or templates.

## Required Companion Updates

When a change affects structure or downstream consumption, update the related files in the same change:

- update `README.md` when the repo shape or recommended usage changes
- update `docs/releases.md` for downstream-relevant changes
- update templates if shared expectations for downstream repos changed
- update docs if folder responsibilities or sync guidance changed

## Validation

Before finishing, run:

```bash
bash scripts/validate-repo.sh
```

If you add new files that change the expected repo shape, update the validator in the same change.
