# Architecture of Three-Tier Data Flow

## 1. Identity

- **What it is:** A three-tier pipeline architecture separating raw materials, structured content, and presentation templates.
- **Purpose:** Enable a clean data flow from free-form input to ATS-optimized PDF output, with AI-assisted compression at the middle tier.

## 2. Core Components

- `master-data/` (Tier 1 - Raw Data Lake): Free-form markdown files for recording career materials without format constraints.
  - `master-data/education-master.md`: Raw education materials (courses, grades, activities, scholarships).
  - `master-data/projects-master.md`: Raw project materials (READMEs, dev logs, tech stack details).
  - `master-data/experience-master.md`: Raw work/internship materials (daily tasks, tools, outcomes).
- `content/` (Tier 2 - Schema Layer): Structured resume content strictly following schema specification.
  - `content/basics/profile.md`: Name, role, email, phone, location, links.
  - `content/basics/skills.md`: Categorized skills with ATS keyword grouping.
  - `content/education/university.md`: Structured education entries (institution, degree, dates, GPA, courses).
  - `content/projects/`: Individual project entries with XYZ bullet format.
  - `content/experience/`: Individual work experience entries with XYZ bullet format.
  - `content/publications/`: Publication entries with required links.
  - `content/awards/`: Award entries.
- `templates/` (Tier 3 - View Layer): LaTeX templates that consume Tier 2 content to generate PDF.

## 3. Execution Flow (LLM Retrieval Map)

- **1. Raw Input (Tier 1):** User writes free-form materials into `master-data/*.md` files. No schema enforcement.
- **2. Context Compression (Tier 1 -> Tier 2):** AI Copilot reads `master-data/` and produces structured `content/` files following XYZ format and schema spec. Each `content/` file references its schema via HTML comments (e.g., `content/education/university.md:1-4`).
- **3. Template Injection (Tier 2 -> Tier 3):** `content/` files are injected into LaTeX templates in `templates/`.
- **4. PDF Compilation (Tier 3 -> Output):** LaTeX compiled via Overleaf or local toolchain to produce final PDF.

## 4. Design Rationale

- **Separation of Concerns:** Each tier has a single responsibility -- capture, structure, or present.
- **AI-Friendly Pipeline:** Tier 1 -> Tier 2 compression is the core AI task, isolated from presentation concerns.
- **Format Independence:** Tier 2 content is template-agnostic; switching LaTeX templates requires no content changes.
