# Migration Standards

Schema changes, backfills, and operational migrations should reduce blast radius and support recovery.

## Core Rules

- Prefer incremental migrations over big-bang changes.
- Make rollout order explicit: schema, code, backfill, cleanup.
- Avoid irreversible operations unless the risk is understood and documented.
- Keep application behavior compatible across the expected deployment window.

## Schema Changes

- Prefer additive schema changes first.
- Do not couple a deploy to an immediate destructive column or table removal.
- Backfill safely before making new fields required.
- Document assumptions about nullability, defaults, and existing data quality.

## Data Backfills

- Design backfills to be resumable or idempotent where practical.
- Measure scope before running large writes.
- Use batching for large datasets to reduce lock time and operational risk.
- Log enough progress to detect partial completion or bad input.

## Deployment Discipline

- State whether the change requires a specific deploy order.
- Call out whether old and new application versions can run concurrently.
- Provide rollback considerations for both code and data paths.
- Avoid mixing unrelated refactors into migration-heavy changes.

## Review Expectations

- Security, authorization, and data retention implications should be reviewed explicitly.
- High-risk migrations should include verification steps and operator notes.
- If a safe rollback is not possible, the PR should say so plainly.
