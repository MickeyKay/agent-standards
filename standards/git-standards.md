# Git Standards

Git and collaboration conventions should make work easier to review, easier to automate, and easier for agents to follow consistently across repositories.

## Core Principles

- Prefer conventions that are predictable and easy to apply mechanically.
- Keep branch and commit naming descriptive enough to understand intent from history alone.
- Optimize for small, reviewable changes over long-lived branches and oversized PRs.
- Make delivery context visible in commits and PRs without turning every change into ceremony.

## Branch Naming

Use semantic branch names that communicate the type of work and the subject.

Preferred pattern:

```text
<type>/<short-description>
<type>/<ticket-or-issue>-<short-description>
```

Common types:

- `feature/`
- `fix/`
- `refactor/`
- `chore/`
- `docs/`
- `test/`

Good examples:

- `feature/invite-members`
- `fix/checkout-tax-rounding`
- `refactor/project-permission-service`
- `feature/abc-123-bulk-import-status`

Avoid:

- `mickey-work`
- `stuff`
- `try-this`
- `branch-1`

## Commit Messages

Prefer conventional commits when the project does not already use another commit convention.

Preferred pattern:

```text
<type>: <short summary>
```

Common types:

- `feat`
- `fix`
- `refactor`
- `test`
- `docs`
- `chore`

Good examples:

- `feat: add invite member flow`
- `fix: preserve selected workspace on refresh`
- `refactor: extract invoice total calculation`
- `test: add regression coverage for expired sessions`

Commit messages should:

- describe the user-visible or codebase-visible change
- stay short enough to scan in history
- avoid vague summaries such as `updates` or `misc fixes`

## Pull Requests

PRs should be easy to review and easy to reason about after merge.

Preferred expectations:

- keep PRs focused on one coherent change
- use titles that match the change intent, not internal shorthand
- include a short summary, test notes, and rollout notes when relevant
- include screenshots or recordings for material UI changes
- call out migrations, feature flags, risky dependencies, or security-sensitive changes explicitly

If a change includes both functional work and cleanup, make sure the cleanup does not obscure the main change.

## Merge And History Hygiene

- Prefer the project's established merge strategy; if none exists, prefer squash merge for small product work to keep history readable.
- Keep commit history understandable before merge if the project preserves individual commits.
- Avoid mixing unrelated changes into one branch or PR.
- Delete stale branches after merge when the hosting platform or team workflow does not already handle it automatically.

## Ticket And Issue Linking

- Link the relevant ticket or issue in the PR when one exists.
- Include ticket identifiers in branch names only when that helps the team's workflow.
- Do not force ticket IDs into commit messages unless the project already requires it.

## Agent Guidance

- Agents should follow the local repo convention first if it differs from this shared default.
- If a downstream repo has no explicit git workflow guidance, this file is the default.
- If a team repeatedly overrides this file in local repos, that is a signal to revisit whether the shared default is correct.
