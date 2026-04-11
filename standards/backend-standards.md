# Backend Standards

Backend systems should make business rules explicit, enforce authorization authoritatively, and fail predictably under stress or bad input.

## Core Practices

- Keep domain rules on the server.
- Validate inputs at service and API boundaries.
- Make write paths explicit and easy to audit.
- Prefer idempotent operations for retries and integrations where practical.
- Design with operational debugging in mind.

## APIs And Services

- Keep request and response contracts intentional.
- Return errors that help operators diagnose issues without leaking sensitive internals to users.
- Avoid mixing transport concerns, business logic, and persistence logic in one dense handler.
- Use pagination, filtering, and search patterns consistently.

## Authorization And Data Integrity

- Authorize sensitive reads as well as writes.
- Avoid relying on client-supplied identifiers without verifying ownership or access.
- Be careful with background jobs and event consumers that operate outside request context.
- Protect multi-step workflows with transactional or compensating logic where needed.

## Persistence And Data Changes

- Keep schema changes incremental and reversible when possible.
- Be explicit about migration risk, backfills, and rollout order.
- Avoid magical data access layers that obscure query behavior or permission boundaries.
- Add safeguards before large deletes, bulk updates, or irreversible transformations.

## Reliability

- Handle timeouts, retries, and partial failures deliberately.
- Make external dependency assumptions explicit.
- Emit enough logs and metrics to diagnose failure patterns.
- Prefer predictable degradation over cascading failure when possible.
