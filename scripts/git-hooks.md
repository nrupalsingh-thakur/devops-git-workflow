# Stage 6 — Git Hooks & Local Automation Readiness

## Objective
Stage 6 focuses on preparing a repository for automation by introducing
local quality gates using Git hooks.

This stage demonstrates awareness of how DevOps teams prevent bad commits
*before* they reach CI/CD pipelines.

---

## What Are Git Hooks?
Git hooks are scripts that Git executes automatically on certain actions
such as commit, push, or merge.

They are commonly used to:
- Prevent empty or invalid commits
- Enforce commit message standards
- Run linting or basic tests locally

---

## Important Characteristics
- Git hooks are **local-only**
- Hooks are stored inside `.git/hooks/`
- They are **not pushed to remote repositories**
- Teams share hook logic via scripts and documentation

---

## Implementation Strategy (Industry Practice)
Instead of pushing hooks directly:
1. Hook logic is written as a script
2. Script is stored in `scripts/`
3. Developers install it locally if needed

This repository follows that approach.

---

## Example: Pre-Commit Hook Script
Location:
scripts/pre-commit.sh

Purpose:
- Block commits when no files are staged
- Encourage disciplined Git usage
- Reduce unnecessary CI failures

---

## How Developers Can Enable It (Optional)
```bash
cp scripts/pre-commit.sh .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

