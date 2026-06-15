#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$(readlink -f "$0")")"

INPUT="resume.html"
OUTPUT="Felix_Guzman_Resume.pdf"

if [[ ! -f "$INPUT" ]]; then
  echo "error: $INPUT not found in $(pwd)" >&2
  exit 1
fi

if command -v chromium >/dev/null 2>&1; then
  BROWSER=chromium
elif command -v google-chrome-stable >/dev/null 2>&1; then
  BROWSER=google-chrome-stable
elif command -v google-chrome >/dev/null 2>&1; then
  BROWSER=google-chrome
else
  echo "error: need chromium or google-chrome installed" >&2
  exit 1
fi

"$BROWSER" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUTPUT" \
  --print-to-pdf-no-header \
  --no-margins \
  "file://$(pwd)/$INPUT"

echo "wrote $(pwd)/$OUTPUT"
