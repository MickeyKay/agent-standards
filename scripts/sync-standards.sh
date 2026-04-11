#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage: sync-standards.sh [--dry-run] [--update] TARGET_REPO

Syncs shared standards and skills into TARGET_REPO without removing files.
By default, only files that do not already exist are copied.
Use --update to replace existing files when their contents differ.

Use --dry-run to preview actions.
EOF
}

DRY_RUN=0
UPDATE=0

if [[ $# -eq 0 ]]; then
  usage
  exit 1
fi

if [[ "${1:-}" == "--dry-run" ]]; then
  DRY_RUN=1
  shift
fi

if [[ "${1:-}" == "--update" ]]; then
  UPDATE=1
  shift
fi

if [[ "${1:-}" == "--dry-run" ]]; then
  DRY_RUN=1
  shift
fi

if [[ $# -ne 1 ]]; then
  usage
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
TARGET_REPO="$1"

if [[ ! -d "${TARGET_REPO}" ]]; then
  echo "Target repo does not exist: ${TARGET_REPO}" >&2
  exit 1
fi

sync_file() {
  local src="$1"
  local dest="$2"

  mkdir -p "$(dirname "${dest}")"

  if [[ ! -e "${dest}" ]]; then
    if [[ "${DRY_RUN}" -eq 1 ]]; then
      echo "Would copy ${src} -> ${dest}"
    else
      cp "${src}" "${dest}"
      echo "Copied ${dest}"
    fi
    return 0
  fi

  if cmp -s "${src}" "${dest}"; then
    echo "Unchanged, skipping: ${dest}"
    return 0
  fi

  if [[ "${UPDATE}" -ne 1 ]]; then
    echo "Different, skipping without --update: ${dest}"
    return 0
  fi

  if [[ "${DRY_RUN}" -eq 1 ]]; then
    echo "Would update ${dest}"
  else
    cp "${src}" "${dest}"
    echo "Updated ${dest}"
  fi
}

sync_tree() {
  local src_root="$1"
  local dest_root="$2"
  local rel

  while IFS= read -r rel; do
    sync_file "${src_root}/${rel}" "${dest_root}/${rel}"
  done < <(cd "${src_root}" && find . -type f | sed 's|^\./||')
}

mkdir -p "${TARGET_REPO}/standards" "${TARGET_REPO}/skills"

sync_tree "${REPO_ROOT}/standards" "${TARGET_REPO}/standards"
sync_tree "${REPO_ROOT}/skills" "${TARGET_REPO}/skills"

if [[ "${DRY_RUN}" -eq 1 ]]; then
  echo "Dry run complete."
else
  echo "Sync complete."
fi
