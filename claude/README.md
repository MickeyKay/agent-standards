# Claude Settings Template

`settings.template.json` is intentionally minimal. It demonstrates the shape of a conservative project-level Claude settings file without inventing tool options that may not be supported in every environment.

Recommended approach:

- start small
- allow only the commands the repo actually expects
- keep broader preferences in user-level Claude settings
- document unusual project needs in the repo's `CLAUDE.md`
