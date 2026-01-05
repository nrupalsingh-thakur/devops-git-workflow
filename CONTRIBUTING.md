# Contributing Guidelines

Thank you for your interest in contributing to this repository.

This project follows a structured Git workflow inspired by real-world
DevOps practices.

---

## Branching Strategy

- `main` → production-ready, stable code
- `develop` → integration branch
- `feature/*` → new features or changes
- `hotfix/*` → urgent fixes (if needed)

Direct commits to `main` are discouraged.

---

## Contribution Workflow

1. Create a feature branch from `develop`
   ```bash
   git checkout develop
   git checkout -b feature/<feature-name>

2. Make your changes and commit using clear messages
   
    git commit -m "feat: add meaningful change"

3. Push the feature branch

    git push origin feature/<feature-name>

4. Open a Pull Request into develop

5. After review, changes are merged into develop
and later promoted to main

---

## Commit Message Convention

Use clear and descriptive commit messages:

    feat: new features

    fix: bug fixes

    docs: documentation updates

    chore: maintenance tasks

---

## Code Quality

    Keep changes small and focused

    Avoid committing broken or incomplete work

    Follow repository structure and standards

