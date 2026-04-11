#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage: bootstrap-project.sh [TARGET_REPO]

Copies thin project templates and a default starter set of standards into TARGET_REPO.
This script is additive and will not overwrite existing files.
If TARGET_REPO is omitted, the current directory is used.
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -gt 1 ]]; then
  usage
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
TARGET_REPO="${1:-.}"

if [[ ! -d "${TARGET_REPO}" ]]; then
  echo "Target repo does not exist: ${TARGET_REPO}" >&2
  exit 1
fi

copy_if_missing() {
  local src="$1"
  local dest="$2"

  if [[ -e "${dest}" ]]; then
    echo "Skipping existing file: ${dest}"
    return 0
  fi

  mkdir -p "$(dirname "${dest}")"
  cp "${src}" "${dest}"
  echo "Created ${dest}"
}

mkdir -p \
  "${TARGET_REPO}/claude" \
  "${TARGET_REPO}/standards" \
  "${TARGET_REPO}/skills" \
  "${TARGET_REPO}/docs"

copy_if_missing "${REPO_ROOT}/templates/AGENTS.project-template.md" "${TARGET_REPO}/AGENTS.md"
copy_if_missing "${REPO_ROOT}/templates/CLAUDE.project-template.md" "${TARGET_REPO}/CLAUDE.md"
copy_if_missing "${REPO_ROOT}/templates/README.project-setup-template.md" "${TARGET_REPO}/docs/agent-setup.md"
copy_if_missing "${REPO_ROOT}/claude/settings.template.json" "${TARGET_REPO}/claude/settings.template.json"

for file in \
  coding-standards.md \
  testing-standards.md \
  security-standards.md \
  code-review-standards.md \
  accessibility-standards.md
do
  copy_if_missing "${REPO_ROOT}/standards/${file}" "${TARGET_REPO}/standards/${file}"
done

for skill in \
  pr-review \
  refactor-safely \
  test-generation
do
  copy_if_missing "${REPO_ROOT}/skills/${skill}/SKILL.md" "${TARGET_REPO}/skills/${skill}/SKILL.md"
done

echo "Bootstrap complete."
