#!/bin/bash
# Generate Swift code from Lean's Init module
# Run from the lean4 repo root after building: make -C build/release
set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
LEAN="$REPO_ROOT/build/release/stage1/bin/lean"
OUT="$SCRIPT_DIR/Sources/LeanGenerated/Generated.swift"

if [ ! -f "$LEAN" ]; then
  echo "Error: lean not found at $LEAN"
  echo "Build first: make -j\$(sysctl -n hw.logicalcpu) -C build/release"
  exit 1
fi

echo "Generating $OUT from Init module..."
"$LEAN" -w "$OUT" "$REPO_ROOT/src/Init.lean"
echo "Done: $(wc -l < "$OUT") lines"
