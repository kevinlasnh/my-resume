# Git Conventions

This document summarizes the Git conventions used in the my-resume project.

## 1. Core Summary

The project uses conventional commits with `feat:` prefix for all commit messages. The main branch is currently `master` (inconsistent with README which references `main`). Privacy is prioritized - the repository should be kept private to protect personal information.

## 2. Source of Truth

- **Primary Code**: `README.md:36-43` - Git workflow and commit message examples
- **Current Branch**: `git log` shows HEAD on `master` branch
- **Initial Commit**: `294edb0` - "feat: 初始化简历仓库结构"
- **Related Architecture**: `/llmdoc/architecture/project-structure.md` - Directory layout and versioning strategy
- **External Docs**: [Conventional Commits](https://www.conventionalcommits.org/) - Reference for commit message format

## 3. Branch Strategy

- **Current main branch**: `master`
- **Note**: README.md references `main` branch (inconsistency exists)
- **Remote**: Not configured yet (no origin set)

## 4. Commit Message Format

Uses conventional commits format with `feat:` prefix:

```bash
git commit -m "feat: 更新工作经历 - 添加 XX 公司项目经验"
```

Pattern: `feat: <brief description>`

## 5. Workflow Commands

```bash
git add .                      # Stage all changes
git commit -m "feat: ..."      # Commit with message
git push origin main           # Push to remote (when configured)
```

## 6. Privacy Considerations

- **Repository visibility**: Should be **private**
- **Sensitive data**: Avoid full ID numbers, detailed addresses
- **Backup**: Regularly backup JSON data files
