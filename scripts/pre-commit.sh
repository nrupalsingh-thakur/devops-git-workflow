#!/bin/bash

# Demo: Pre-Commit Hook
# Purpose: Prevent empty commits

STAGED_FILES=$(git diff --cached --name-only)

if [ -z "$STAGED_FILES" ]; then
  echo "❌ Commit blocked: No files staged."
  echo "👉 Stage files using: git add <file>"
  exit 1
fi

echo "Pre-commit check passed."
exit 0

