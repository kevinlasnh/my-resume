# Architecture of Three-Tier Data Flow

## 1. Identity

- **What it is:** A three-tier pipeline architecture separating raw materials, structured content, and presentation templates.
- **Purpose:** Enable a clean data flow from free-form input to ATS-optimized PDF output, with AI-assisted compression at the middle tier.

## 2. Core Components

- `master-data/` (Tier 1 - Raw Data Lake): Six subdirectories mirroring content categories, free-form markdown without format constraints.
  - `master-data/basics/`: Raw profile/skills materials.
  - `master-data/education/education-master.md`: Raw education materials (courses, grades, activities, scholarships).
  - `master-data/projects/projects-master.md`: Raw project materials (READMEs, dev logs, tech stack details).
  - `master-data/experience/experience-master.md`: Raw work/internship materials (daily tasks, tools, outcomes).
  - `master-data/publications/`: Raw publication materials.
  - `master-data/awards/`: Raw award materials.
- `content/` (Tier 2 - Schema Layer): Flat directory with 7 markdown files, structured resume content strictly following schema specification.
  - `content/profile.md`: Name, role, email, phone, location, links.
  - `content/skills.md`: Categorized skills with ATS keyword grouping.
  - `content/education.md`: Structured education entries (institution, degree, dates, GPA, courses).
  - `content/projects.md`: All project entries with XYZ bullet format (merged single file).
  - `content/experience.md`: All work experience entries with XYZ bullet format (merged single file).
  - `content/publications.md`: All publication entries with required links (merged single file).
  - `content/awards.md`: All award entries (merged single file).
- `templates/` (Tier 3 - View Layer): LaTeX presentation layer based on Jake's Resume (MIT License).
  - `templates/resume.tex` (`\resumeSubheading`, `\resumeExperienceHeading`, `\resumeProjectHeading`, `\resumeProjectHeadingNoURL`, `\resumePublication`, `\resumeAward`): Single-file template containing all command definitions (Roboto font, ATS optimization via `\pdfgentounicode=1`, single-column layout) and all 7 sections inline (Layers 1-6B). Key commands:
    - `\resumeSubheading` (4 args: Institution, Location, Degree, Dates)
    - `\resumeProjectHeading` (5 args: Name|TechStack, Dates, URL, DisplayText, Role--Type) - URL and display text separated
    - `\resumeProjectHeadingNoURL` (3 args: Name|TechStack, Dates, Role--Type) - variant for projects without links
    - `\resumeExperienceHeading` (5 args: Company, Dates, Position, Location, CompanyDesc)
    - `\resumePublication` (6 args: Title, Authors, Venue, Status, Date, URL)
    - `\resumeAward` (3 args: Title, Issuer, Date)

## 3. Execution Flow (LLM Retrieval Map)

- **1. Raw Input (Tier 1):** User writes free-form materials into `master-data/{category}/*.md` files. No schema enforcement. Six subdirectories mirror content categories.
- **2. Context Compression (Tier 1 -> Tier 2):** AI Copilot reads `master-data/` and produces structured `content/*.md` files (flat, 7 files) following XYZ format and schema spec.
- **3. Template Injection (Tier 2 -> Tier 3):** `content/` files are injected into LaTeX templates in `templates/`.
- **4. PDF Compilation (Tier 3 -> Output):** LaTeX compiled via Overleaf or local toolchain to produce final PDF.

## 4. Design Rationale

- **Separation of Concerns:** Each tier has a single responsibility -- capture, structure, or present.
- **AI-Friendly Pipeline:** Tier 1 -> Tier 2 compression is the core AI task, isolated from presentation concerns.
- **Format Independence:** Tier 2 content is template-agnostic; switching LaTeX templates requires no content changes.
