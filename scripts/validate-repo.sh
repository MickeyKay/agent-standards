#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CLAUDE.md"
  "CONTRIBUTING.md"
  "docs/architecture.md"
  "docs/usage.md"
  "docs/sync-strategy.md"
  "docs/releases.md"
  "docs/spec-pipeline.md"
  "docs/contributing-skills.md"
  "prompts/orchestrator.md"
  "standards/README.md"
  "templates/AGENTS.project-template.md"
  "templates/CLAUDE.project-template.md"
  "templates/README.project-setup-template.md"
  "scripts/init-framework.sh"
  "scripts/update-framework.sh"
  "scripts/bootstrap-project.sh"
  "scripts/sync-standards.sh"
  "scripts/validate-repo.sh"
  "skills/evolve-standards-repo/SKILL.md"
)

echo "Checking required files..."
for path in "${required_files[@]}"; do
  if [[ ! -f "${REPO_ROOT}/${path}" ]]; then
    echo "Missing required file: ${path}" >&2
    exit 1
  fi
done

echo "Checking standards..."
standard_count="$(find "${REPO_ROOT}/standards" -maxdepth 1 -type f -name '*.md' | wc -l | tr -d ' ')"
if [[ "${standard_count}" -lt 10 ]]; then
  echo "Expected at least 10 standards markdown files, found ${standard_count}" >&2
  exit 1
fi

echo "Checking skills..."
skill_count="$(find "${REPO_ROOT}/skills" -mindepth 2 -maxdepth 2 -type f -name 'SKILL.md' | wc -l | tr -d ' ')"
if [[ "${skill_count}" -lt 7 ]]; then
  echo "Expected at least 7 skills, found ${skill_count}" >&2
  exit 1
fi

echo "Checking each skill directory..."
while IFS= read -r skill_dir; do
  if [[ ! -f "${skill_dir}/SKILL.md" ]]; then
    echo "Missing SKILL.md in ${skill_dir}" >&2
    exit 1
  fi
done < <(find "${REPO_ROOT}/skills" -mindepth 1 -maxdepth 1 -type d | sort)

echo "Checking standards index links..."
while IFS= read -r standard_file; do
  standard_name="$(basename "${standard_file}")"
  if ! grep -Fq "${standard_name}" "${REPO_ROOT}/standards/README.md"; then
    echo "standards/README.md does not reference ${standard_name}" >&2
    exit 1
  fi
done < <(find "${REPO_ROOT}/standards" -maxdepth 1 -type f -name '*.md' ! -name 'README.md' | sort)

echo "Checking release note coverage guidance..."
if ! grep -Fq "docs/releases.md" "${REPO_ROOT}/CONTRIBUTING.md"; then
  echo "CONTRIBUTING.md should mention docs/releases.md" >&2
  exit 1
fi

echo "Checking script help output..."
init_help="$(bash "${REPO_ROOT}/scripts/init-framework.sh" --help 2>&1 || true)"
update_help="$(bash "${REPO_ROOT}/scripts/update-framework.sh" --help 2>&1 || true)"
bootstrap_help="$(bash "${REPO_ROOT}/scripts/bootstrap-project.sh" --help 2>&1 || true)"
sync_help="$(bash "${REPO_ROOT}/scripts/sync-standards.sh" --help 2>&1 || true)"

if [[ "${init_help}" != *"Usage: init-framework.sh [TARGET_REPO]"* ]]; then
  echo "init-framework.sh help output did not match expectation" >&2
  exit 1
fi

if [[ "${update_help}" != *"Usage: update-framework.sh [--dry-run] [--update] [TARGET_REPO]"* ]]; then
  echo "update-framework.sh help output did not match expectation" >&2
  exit 1
fi

if [[ "${bootstrap_help}" != *"Usage: bootstrap-project.sh [TARGET_REPO]"* ]]; then
  echo "bootstrap-project.sh help output did not match expectation" >&2
  exit 1
fi

if [[ "${sync_help}" != *"Usage: sync-standards.sh [--dry-run] [--update] [TARGET_REPO]"* ]]; then
  echo "sync-standards.sh help output did not match expectation" >&2
  exit 1
fi

echo "Validation passed."
