# Downstream Layout Example

This is a practical example of how an application repo can consume this standards package without inflating root agent files.

## Example Structure

```text
my-app/
  AGENTS.md
  CLAUDE.md
  README.md
  app/
  src/
  standards/
    coding-standards.md
    testing-standards.md
    security-standards.md
    code-review-standards.md
  skills/
    pr-review/
      SKILL.md
    refactor-safely/
      SKILL.md
    test-generation/
      SKILL.md
  docs/
    architecture.md
    agent-setup.md
```

## Why This Works

- root agent files stay short
- shared standards remain easy to sync
- only actively used skills are present
- repo-specific architecture notes stay local

## Root File Pattern

Use root `AGENTS.md` and `CLAUDE.md` to answer:

- where standards live
- where skills live
- what commands matter
- what local constraints override the shared defaults

Do not use root files to restate every shared coding rule.
