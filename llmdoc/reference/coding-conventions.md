# Coding Conventions

This document summarizes the key conventions used in the my-resume project.

## 1. Core Summary

The my-resume project follows a three-tier data flow architecture (Raw -> Schema -> LaTeX View). All files and directories use strict kebab-case naming. Content follows ATS-optimized formatting with XYZ (Action-Context-Result) bullet structure. The project enforces evidence-based claims and privacy-first principles.

## 2. Source of Truth

- **Primary Code**: `README.md` - Project architecture and naming convention
- **Directory Structure**: `README.md:9-26` - Three-tier directory layout
- **Naming Convention**: `README.md:47-49` - Kebab-case enforcement
- **Related Architecture**: `/llmdoc/architecture/three-tier-data-flow.md` - Full tier specification
- **Related Architecture**: `/llmdoc/architecture/content-schema.md` - Schema layer conventions

## 3. Naming Conventions

- **All files and directories**: Strict kebab-case (e.g., `education-master.md`, `mr-cooking.md`)
- **Master data files**: `{category}-master.md` pattern (e.g., `projects-master.md`)
- **Content files**: Descriptive kebab-case within category subdirectories (e.g., `content/education/university.md`)

## 4. Directory Structure

```
master-data/    # [Tier 1] Raw Data Lake
content/        # [Tier 2] Schema Layer
  basics/       #   profile.md, skills.md
  education/    #   university.md, ...
  projects/     #   per-project files
  experience/   #   per-entry files
  publications/ #   per-entry files
  awards/       #   per-entry files
templates/      # [Tier 3] View Layer (LaTeX)
llmdoc/         # Documentation system
```

## 5. Content Format Standards

- **Bullet format**: XYZ (Action-Context-Result) for experience, projects, publications
- **Skills format**: `* **Category:** **Skill** (Detail), Skill`
- **Schema declaration**: HTML comments at top of each `content/` file
- **Language**: Chinese with English technical terms
