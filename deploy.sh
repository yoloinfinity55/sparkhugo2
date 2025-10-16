#!/usr/bin/env bash
set -euo pipefail
# Usage: ./deploy.sh <destination-git-url> [branch]
DEST_REPO=${1:-"git@github.com:yoloinfinity55/yoloinfinity55.github.io.git"}
BRANCH=${2:-"main"}
echo "Deploying ./public to ${DEST_REPO} (branch ${BRANCH})"
if [ ! -d public ]; then
  echo "No public/ directory found. Run build.sh first." >&2
  exit 1
fi
tmpdir=$(mktemp -d)
git clone --depth=1 --branch=${BRANCH} "${DEST_REPO}" "$tmpdir" || (git clone --depth=1 "${DEST_REPO}" "$tmpdir" || true)
# If clone failed because repo doesn't exist yet, initialize a new repo
if [ ! -d "$tmpdir/.git" ]; then
  echo "Destination repo not found or empty. Creating a new repo locally and pushing..."
  rm -rf "$tmpdir"
  mkdir -p "$tmpdir"
  git init "$tmpdir"
  git -C "$tmpdir" checkout -b "${BRANCH}"
fi
# Clean and copy
rm -rf "$tmpdir"/*
cp -a public/. "$tmpdir"/
git -C "$tmpdir" add --all
git -C "$tmpdir" commit -m "Deploy site: $(date -u +"%Y-%m-%d %H:%M:%S UTC")" || echo "Nothing to commit"
git -C "$tmpdir" push "${DEST_REPO}" "${BRANCH}" --force
echo "Deployed."
