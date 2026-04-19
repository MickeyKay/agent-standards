# Security Standards

Security work should reduce real risk without turning everyday delivery into ceremony. The baseline expectation is secure defaults, server-authoritative enforcement, and careful handling of secrets and user data.

## Core Rules

- Keep authorization authoritative on the server.
- Treat all client input as untrusted.
- Use parameterized queries and framework-safe data access patterns.
- Store secrets in approved secret managers or environment configuration, never in source control.
- Minimize collection, retention, and exposure of sensitive data.

## Authentication And Authorization

- Authenticate identity at trusted boundaries.
- Authorize every sensitive action on the server, even if the UI also hides controls.
- Avoid role checks scattered across the app with inconsistent semantics.
- Prefer centralized permission helpers backed by clear domain rules.

## Input, Output, And Data Handling

- Validate inputs at API and persistence boundaries.
- Encode or sanitize output based on rendering context.
- Be explicit about trust boundaries for webhook payloads, query params, uploaded files, and third-party data.
- Avoid logging tokens, secrets, session identifiers, or raw personal data.

## Frontend And Browser Risks

- Avoid unsafe HTML rendering unless it is sanitized with a well-understood approach.
- Be careful with dynamic redirects, user-controlled URLs, and post-message flows.
- Do not rely on client-side authorization for protected data.
- Prefer secure cookie and session defaults provided by proven libraries.

## Infrastructure And Operational Hygiene

- Use least-privilege credentials where practical.
- Rotate secrets when exposure is suspected.
- Keep dependencies current enough to avoid known critical vulnerabilities.
- Review security impact before adding background jobs, webhooks, file uploads, or third-party integrations.

## Delivery Guidance

- Flag security-sensitive changes clearly in PRs.
- When you cannot fully solve a security concern immediately, document the risk, mitigation, and follow-up path.
- Avoid introducing convenience shortcuts that create obvious security footguns.

## Applied Checklist

Before merge for security-sensitive changes, verify:

- sensitive actions are authorized on the server
- untrusted inputs are validated at boundaries
- secrets and tokens are not exposed in code or logs
- data access patterns avoid injection and ownership bypass
- user-controlled redirects/HTML/URLs are handled safely
- background jobs and webhooks enforce trust boundaries
- dependencies and third-party integrations were risk-reviewed
- unresolved security risk is documented with mitigation and follow-up
