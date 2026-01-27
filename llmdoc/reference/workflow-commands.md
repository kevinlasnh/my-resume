# Workflow Commands Reference

This document provides quick reference for common workflow commands.

## 1. Core Summary

Essential commands for the resume update workflow: export from Reactive Resume, commit to Git, and archive versions. All commands assume the project root as working directory.

## 2. Source of Truth

- **Primary Code**: `README.md:36-43` - Git workflow documentation
- **Related Guides**: `/llmdoc/guides/edit-and-update-resume.md` - Step-by-step update guide
- **Related Guides**: `/llmdoc/guides/archive-resume-version.md` - Version archival guide

## 3. Common Commands

### Update Workflow
```bash
# After exporting from Reactive Resume
git add .
git commit -m "feat: <description>"
```

### Archive Version
```bash
# Copy current PDF to versions with timestamp
cp pdf/<filename>.pdf versions/<filename>_v<version>_YYYYMMDD.pdf
git add versions/
git commit -m "feat: 归档简历版本"
```

### View History
```bash
git log              # View commit history
git diff             # View uncommitted changes
```

## 4. PDF Naming Patterns

- **General**: `姓名_岗位_年份.pdf` (e.g., `ZhangSan_Frontend_2026.pdf`)
- **English**: `姓名_英文版.pdf` (e.g., `ZhangSan_English.pdf`)
- **Custom**: `姓名_公司定制版.pdf` (e.g., `ZhangSan_ByteDance_Custom.pdf`)
