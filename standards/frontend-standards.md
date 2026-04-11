# Frontend Standards

Frontend code should preserve product quality, performance, and accessibility while staying straightforward to maintain.

## UI Engineering Principles

- Build interfaces that are clear, resilient, and easy to extend.
- Prefer composition over deeply configurable component APIs.
- Use existing design system and app patterns before inventing new presentation abstractions.
- Keep state close to the UI that owns it unless multiple surfaces truly need coordination.

## Data And State

- Keep server data fetching and mutations predictable.
- Avoid duplicating authoritative server state in many client caches without a reason.
- Model loading, empty, success, and error states intentionally.
- Do not hide slow or failing states behind indefinite spinners.

## Component Design

- Keep components focused on one level of responsibility.
- Extract subcomponents when readability improves, not just to reduce file length.
- Avoid prop surfaces that are large enough to behave like a custom DSL.
- Prefer explicit props and domain names over generic configuration blobs.

## UX Quality

- Preserve keyboard support, focus management, and visible feedback.
- Handle empty, error, and permission-denied states with the same care as the happy path.
- Use progressive disclosure for dense interfaces.
- Avoid surprising data loss in forms or long-running tasks.

## Performance

- Measure before introducing complexity for performance.
- Avoid unnecessary client-side work in rendering hot paths.
- Defer heavy code and data where it materially improves load experience.
- Keep performance optimizations understandable to the next engineer.

## Styling

- Use the project's existing styling system consistently.
- Prefer tokenized, reusable decisions over ad hoc values.
- Avoid visual regressions by checking responsive layouts, spacing, and contrast.
