# Coding Conventions

This document summarizes the key conventions used in the my-resume project.

## 1. Core Summary

The my-resume project follows a three-tier data flow architecture (Raw -> Schema -> LaTeX View). All files and directories use strict kebab-case naming. Content follows ATS-optimized formatting with XYZ (Action-Context-Result) bullet structure. The project enforces evidence-based claims and privacy-first principles.

## 2. Source of Truth

- **Primary Code**: `CLAUDE.md` - Repository identity, directory structure, design principles, modification rules
- **Directory Structure**: `CLAUDE.md:13-37` - Three-tier directory layout
- **Naming Convention**: `CLAUDE.md:74` - Kebab-case enforcement
- **Related Architecture**: `/llmdoc/architecture/three-tier-data-flow.md` - Full tier specification
- **Related Architecture**: `/llmdoc/architecture/content-schema.md` - Schema layer conventions

## 3. Naming Conventions

- **All files and directories**: Strict kebab-case (e.g., `education-master.md`, `projects.md`)
- **Master data files**: `{category}-master.md` inside `master-data/{category}/` subdirectory (e.g., `master-data/projects/projects-master.md`)
- **Content files**: Flat in `content/` root, one file per category (e.g., `content/profile.md`, `content/education.md`, `content/projects.md`)
- **LaTeX template**: `resume.tex` -- single file containing all commands and sections inline

## 4. Directory Structure

```
master-data/    # [Tier 1] Raw Data Lake
  basics/       #   (empty, reserved)
  education/    #   education-master.md
  projects/     #   projects-master.md
  experience/   #   experience-master.md
  publications/ #   (empty, reserved)
  awards/       #   (empty, reserved)
content/        # [Tier 2] Schema Layer (flat, 7 files)
  profile.md    #   Layer 1: Header
  education.md  #   Layer 2: Education
  skills.md     #   Layer 3: Technical Skills
  projects.md   #   Layer 4: Selected Projects
  experience.md #   Layer 5: Professional Experience
  publications.md # Layer 6A: Publications
  awards.md     #   Layer 6B: Awards
templates/      # [Tier 3] View Layer (LaTeX)
llmdoc/         # Documentation system
```

## 5. Content Format Standards

- **Bullet format**: XYZ (Action-Context-Result) for experience, projects, publications
- **Skills format**: `* **Category:** **Skill** (Detail), Skill`
- **Schema declaration**: HTML comments at top of each `content/` file
- **Language**: Chinese with English technical terms
