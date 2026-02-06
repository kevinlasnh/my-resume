# my-resume Documentation Index

> **Last Updated**: 2026-02-06 | **Version**: 2.0
> **Project**: Three-Tier Data Flow Resume System (Raw -> Schema -> LaTeX View)
> **Architecture**: master-data/ -> content/ -> templates/ -> PDF

---

## Quick Start

1. Read [Project Overview](overview/project-overview.md) to understand the system
2. Read [Workflows Overview](overview/workflows-overview.md) for the three-phase pipeline
3. Follow [Add Raw Material](guides/add-raw-material.md) to start contributing content
4. Reference [Design Principles](reference/design-principles.md) for non-negotiable rules

---

## Overview

High-level project context and philosophy.

| Document | Description |
|----------|-------------|
| [Project Overview](overview/project-overview.md) | Project identity: three-tier data flow pipeline for resume management |
| [Workflows Overview](overview/workflows-overview.md) | Three-phase workflow: Divergence -> Convergence -> Build |

---

## Architecture

System design and LLM retrieval maps.

| Document | Description |
|----------|-------------|
| [Three-Tier Data Flow](architecture/three-tier-data-flow.md) | Core architecture: master-data/ (Tier 1) -> content/ (Tier 2) -> templates/ (Tier 3) |
| [Content Schema](architecture/content-schema.md) | Tier 2 schema specification: field definitions, XYZ format, ATS optimization |

---

## Guides

Step-by-step operational instructions.

| Document | Description |
|----------|-------------|
| [Add Raw Material](guides/add-raw-material.md) | Phase 1: Record free-form career materials into master-data/ |
| [Compress to Schema](guides/compress-to-schema.md) | Phase 2: AI Copilot transforms raw materials into structured content/ |
| [Build LaTeX PDF](guides/build-latex-pdf.md) | Phase 3: Inject content into LaTeX templates and compile PDF |

---

## Reference

Factual lookup information and specifications.

| Document | Description |
|----------|-------------|
| [Design Principles](reference/design-principles.md) | Five core principles: kebab-case, no fluff, evidence-based, ATS-optimized, privacy-first |
| [Coding Conventions](reference/coding-conventions.md) | Naming rules, directory structure, content format standards |
| [Git Conventions](reference/git-conventions.md) | Branch strategy, commit format, privacy considerations |

---

## Directory Structure

```
my-resume/
├── master-data/          # [Tier 1] Raw Data Lake - free-form career materials
│   ├── education-master.md
│   ├── projects-master.md
│   └── experience-master.md
├── content/              # [Tier 2] Schema Layer - structured resume content
│   ├── basics/           # profile.md, skills.md
│   ├── education/        # university.md
│   ├── projects/         # per-project entries
│   ├── experience/       # per-entry files
│   ├── publications/     # per-entry files
│   └── awards/           # per-entry files
├── templates/            # [Tier 3] View Layer - LaTeX templates
├── llmdoc/               # This documentation system
│   ├── index.md          # Documentation index (this file)
│   ├── overview/         # High-level project context (2 documents)
│   ├── architecture/     # System design and retrieval maps (2 documents)
│   ├── guides/           # Step-by-step instructions (3 documents)
│   └── reference/        # Factual lookup information (3 documents)
├── README.md             # Project readme
├── LICENSE               # MIT License
└── .gitignore            # Git ignore rules
```
