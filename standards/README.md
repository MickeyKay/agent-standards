# Standards Index

These standards are the shared engineering policy layer for downstream repos. Import only the files a project actually needs.

## Standards

- [coding-standards.md](coding-standards.md): readability, maintainability, TypeScript discipline, refactoring guidance, and dependency hygiene.
- [testing-standards.md](testing-standards.md): behavior-focused testing strategy, regression discipline, and test maintenance expectations.
- [security-standards.md](security-standards.md): server-authoritative authorization, input handling, secrets hygiene, and common web security pitfalls.
- [code-review-standards.md](code-review-standards.md): review priorities, author expectations, and approval criteria.
- [architecture-principles.md](architecture-principles.md): pragmatic system design guidance and boundaries for maintainable change.
- [frontend-standards.md](frontend-standards.md): component design, state handling, UX quality, and performance discipline.
- [backend-standards.md](backend-standards.md): API design, persistence safety, authorization, and reliability practices.
- [accessibility-standards.md](accessibility-standards.md): semantic UI, keyboard support, focus behavior, and accessible interaction quality.
- [migration-standards.md](migration-standards.md): schema change safety, backfills, rollout order, and rollback awareness.
- [git-standards.md](git-standards.md): branch naming, conventional commits, PR hygiene, merge strategy, and issue linking conventions.

## Usage

- keep root agent files short and point to these standards
- sync or copy only the standards a repo will actually use
- update related docs and templates when a standard meaningfully changes
