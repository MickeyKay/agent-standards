#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage: update-framework.sh [--dry-run] [--update] [TARGET_REPO]

Downloads a snapshot of the shared agent-standards repo and syncs shared standards and skills into TARGET_REPO.
If TARGET_REPO is omitted, the current directory is used.

Environment variables:
  AGENT_STANDARDS_REF           Git ref to download from GitHub. Defaults to main.
  AGENT_STANDARDS_LOCAL_SOURCE  Local checkout to use instead of downloading. Useful for testing.
EOF
}

DRY_RUN=0
UPDATE=0

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
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

if [[ $# -gt 1 ]]; then
  usage
  exit 1
fi

TARGET_REPO="${1:-.}"

if [[ ! -d "${TARGET_REPO}" ]]; then
  echo "Target repo does not exist: ${TARGET_REPO}" >&2
  exit 1
fi

DEFAULT_REF="main"
REPO_SLUG="MickeyKay/agent-standards"
REF="${AGENT_STANDARDS_REF:-${DEFAULT_REF}}"
TEMP_DIR="$(mktemp -d "${TMPDIR:-/tmp}/agent-standards-update.XXXXXX")"
SOURCE_DIR=""

cleanup() {
  rm -rf "${TEMP_DIR}"
}

trap cleanup EXIT

if [[ -n "${AGENT_STANDARDS_LOCAL_SOURCE:-}" ]]; then
  SOURCE_DIR="$(cd "${AGENT_STANDARDS_LOCAL_SOURCE}" && pwd)"
else
  ARCHIVE_URL="https://codeload.github.com/${REPO_SLUG}/tar.gz/refs/heads/${REF}"
  ARCHIVE_PATH="${TEMP_DIR}/agent-standards.tar.gz"

  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "${ARCHIVE_URL}" -o "${ARCHIVE_PATH}"
  elif command -v wget >/dev/null 2>&1; then
    wget -qO "${ARCHIVE_PATH}" "${ARCHIVE_URL}"
  else
    echo "curl or wget is required to download ${ARCHIVE_URL}" >&2
    exit 1
  fi

  tar -xzf "${ARCHIVE_PATH}" -C "${TEMP_DIR}"
  SOURCE_DIR="$(find "${TEMP_DIR}" -mindepth 1 -maxdepth 1 -type d | head -n 1)"
fi

if [[ -z "${SOURCE_DIR}" || ! -f "${SOURCE_DIR}/scripts/sync-standards.sh" ]]; then
  echo "Could not locate sync-standards.sh in the downloaded snapshot." >&2
  exit 1
fi

args=()
if [[ "${DRY_RUN}" -eq 1 ]]; then
  args+=("--dry-run")
fi
if [[ "${UPDATE}" -eq 1 ]]; then
  args+=("--update")
fi
args+=("${TARGET_REPO}")

bash "${SOURCE_DIR}/scripts/sync-standards.sh" "${args[@]}"
