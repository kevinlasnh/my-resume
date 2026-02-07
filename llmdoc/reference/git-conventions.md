# Git Conventions

This document summarizes the Git conventions used in the my-resume project.

## 1. Core Summary

The project uses conventional commits with `feat:` prefix for content changes and `docs:` for documentation updates. The main branch is `master`. Privacy is prioritized -- the repository should be kept private. Legacy files are archived to `_legacy_archive/` (excluded via `.gitignore`).

## 2. Source of Truth

- **Primary Code**: `CLAUDE.md` - Repository identity, workflow, and modification rules
- **Git Ignore Rules**: `.gitignore` - Exclusions for OS files, editor configs, drafts, legacy archive, LaTeX build artifacts
- **Related Architecture**: `/llmdoc/architecture/three-tier-data-flow.md` - Directory structure context

## 3. Branch Strategy

- **Main branch**: `master`
- **Remote**: `https://github.com/kevinlasnh/my-resume`

## 4. Commit Message Format

Pattern: `<type>: <brief description>`

| Type | Use Case |
|------|----------|
| `feat` | New content or structural changes |
| `docs` | Documentation updates (llmdoc, README) |
| `refactor` | Architecture restructuring |
| `chore` | Maintenance tasks (.gitignore, cleanup) |

## 5. Privacy Considerations

- **Repository visibility**: Should be **private**
- **No personal photos**: Privacy-first principle
- **No full addresses**: City-level location only
- **Sensitive data**: Excluded via `.gitignore` (`.env`, `.secret`)
