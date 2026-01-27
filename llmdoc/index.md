# my-resume Documentation Index

> **Last Updated**: 2026-01-27 | **Version**: 1.1
> **Project**: A Git-based version control system for personal resume management
> **Editor**: [Reactive Resume](https://rxresu.me/) (JSON Schema v5.0.0)

---

## Quick Start

1. Read [Project Overview](overview/project-overview.md) to understand the system
2. Follow [Edit and Update Resume](guides/edit-and-update-resume.md) for the core workflow
3. Reference [Git Conventions](reference/git-conventions.md) for commit standards

---

## Overview

High-level project context and philosophy.

| Document | Description |
|----------|-------------|
| [Project Overview](overview/project-overview.md) | Project identity, purpose, and integration with Reactive Resume |
| [Workflows Overview](overview/workflows-overview.md) | "Edit-export-version control" pattern philosophy |
| [Resume Data Format Overview](overview/resume-data-format-overview.md) | Reactive Resume JSON Schema v5.0.0 explanation |
| [Versioning Overview](overview/versioning-overview.md) | Three-tier version management (data/pdf/archive) |

---

## Architecture

System design and LLM retrieval maps for understanding how components interact.

| Document | Description |
|----------|-------------|
| [Resume JSON Schema](architecture/resume-json-schema.md) | Schema structure, field relationships, and data flow |
| [Versioning Architecture](architecture/versioning-architecture.md) | Three-tier system: data layer, distribution layer, archive layer |
| [Variant Management](architecture/variant-management.md) | Naming-convention-based variant strategy (general/English/custom) |

---

## Guides

Step-by-step operational instructions for common tasks.

| Document | Description |
|----------|-------------|
| [Working with Resume JSON](guides/working-with-resume-json.md) | Export, validate, import JSON from Reactive Resume |
| [Edit and Update Resume](guides/edit-and-update-resume.md) | Core workflow: edit online, export JSON/PDF, commit |
| [Archive Resume Version](guides/archive-resume-version.md) | Create timestamped snapshots in `versions/` |
| [Manage Resume Variants](guides/manage-resume-variants.md) | Create and maintain multiple resume versions |

---

## Reference

Factual lookup information and specifications.

| Document | Description |
|----------|-------------|
| [Git Conventions](reference/git-conventions.md) | Branch strategy, commit format (`feat:` prefix), privacy guidelines |
| [Coding Conventions](reference/coding-conventions.md) | File naming, directory structure, data format standards |
| [Workflow Commands](reference/workflow-commands.md) | Quick command reference for common operations |
| [Resume Schema Reference](reference/resume-schema-reference.md) | Complete field reference for JSON Schema v5.0.0 |

---

## Directory Structure

```
my-resume/
├── data/          # JSON source files (Git tracked)
├── pdf/           # Current PDF versions for distribution
├── versions/      # Historical archives with timestamps
├── docs/          # Optional GitHub Pages static site
├── assets/        # Static resources (images, CSS)
├── llmdoc/        # This documentation system
│   ├── index.md   # Documentation index
│   ├── overview/  # High-level project context (4 documents)
│   ├── guides/    # Step-by-step operational instructions (4 documents)
│   ├── architecture/  # System design and LLM retrieval maps (3 documents)
│   └── reference/ # Factual lookup information (4 documents)
├── README.md      # Project readme
├── LICENSE        # MIT License
└── .gitignore     # Git ignore rules
```

---

## External Resources

- [Reactive Resume](https://rxresu.me/) - Online resume editor
- [JSON Schema v5.0.0](https://rxresu.me/schema.json) - Official schema definition
- [Schema Documentation](https://docs.rxresu.me/guides/json-resume-schema) - Complete field specifications
- [Export Guide](https://docs.rxresu.me/guides/exporting-your-resume) - JSON/PDF export instructions
