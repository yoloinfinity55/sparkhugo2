#!/usr/bin/env bash
set -euo pipefail
echo "Building tailwind css and Hugo site..."
if ! command -v npm >/dev/null 2>&1; then
  echo "npm not found. Please install Node.js and npm." >&2
  exit 1
fi
if ! command -v hugo >/dev/null 2>&1; then
  echo "hugo not found. Please install Hugo (recommended: Hugo Extended)." >&2
  exit 1
fi
npm run build
echo "Build complete. Output in ./public/"
