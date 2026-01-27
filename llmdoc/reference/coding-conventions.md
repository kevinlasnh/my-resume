# Coding Conventions

This document summarizes the key conventions used in the my-resume project.

## 1. Core Summary

The my-resume project follows a "source-control-first" architecture where JSON data files are the source of truth, PDFs are distribution artifacts, and Git provides version control. The project uses Reactive Resume v5.0.0 JSON Schema as the data format standard.

## 2. Source of Truth

### File Naming Conventions
- **Primary Data**: `.gitignore` - Defines exclusions for OS files, editor configs, and drafts folder
- **README Structure**: `README.md:8-24` - Directory structure documentation
- **PDF Naming**: `README.md:45-50` - Three patterns: `姓名_岗位_年份.pdf`, `姓名_英文版.pdf`, `姓名_某公司定制版.pdf`

### Directory Structure
- **Primary Code**: `README.md:9-24` - Defines six top-level directories
- **data/** - Source JSON files from Reactive Resume (`resume.json`)
- **pdf/** - Distribution-ready PDF resumes
- **versions/** - Historical archives
- **docs/** - Optional GitHub Pages static site
- **assets/** - Static resources (images, CSS)
- **llmdoc/** - AI agent documentation system

### Data Format Standards
- **Primary Code**: `README.md:28-33` - Reactive Resume export workflow
- **Schema Version**: v5.0.0 (Reactive Resume JSON Schema)
- **Schema URL**: https://rxresu.me/schema.json
- **External Docs**: https://docs.rxresu.me/guides/json-resume-schema - Complete field specifications
- **Related Architecture**: `/llmdoc/agent/scout-data-format.md` - Detailed schema structure

### Git Conventions
- **Commit Format**: Conventional commits with `feat:` prefix (`README.md:38-42`)
- **Branch Naming**: Uses `master` (README inconsistency with `main` reference)
- **Privacy**: Repository should be private (`README.md:74-77`)

### Documentation Standards
- **README Sections**: Structure, Usage, Version Control, Naming, Versions, Links, Changelog
- **Language**: Chinese with English technical terms
- **Version Tracking**: Table format with columns for version, purpose, last update
