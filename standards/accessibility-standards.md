# Accessibility Standards

Accessibility is a product quality requirement, not a cleanup pass. New work should preserve and ideally improve usability for keyboard, screen reader, zoom, and reduced-motion users.

## Baseline Expectations

- Use semantic HTML before adding ARIA.
- Ensure all interactive elements are keyboard reachable.
- Maintain visible focus indicators.
- Provide accessible names for controls, inputs, dialogs, and landmarks.
- Preserve sufficient color contrast and readable sizing.

## Interaction Quality

- Keyboard interactions should match expected platform behavior.
- Focus should move intentionally after navigation, dialogs, and async actions.
- Error messages should be tied to the relevant fields or actions.
- Status changes that matter should be announced in an accessible way when appropriate.

## Content And Structure

- Use heading hierarchy to reflect page structure.
- Do not rely on color alone to communicate meaning.
- Provide text alternatives for meaningful icons and media.
- Keep link and button text specific enough to make sense out of context.

## Dynamic UI Guidance

- Test modals, menus, comboboxes, and custom widgets carefully.
- Avoid trapping focus unless the pattern requires it and escape behavior is correct.
- Preserve usability at increased zoom and on narrow screens.
- Respect reduced-motion preferences for non-essential animation.

## Testing And Review

- Include accessibility checks in UI review, not only after launch.
- Prefer automated checks as a supplement, not a substitute for manual keyboard and screen reader thinking.
- Add regression coverage when fixing important accessibility defects.
