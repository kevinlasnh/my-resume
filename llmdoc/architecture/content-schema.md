# Architecture of Content Schema Layer

## 1. Identity

- **What it is:** The Tier 2 schema specification defining how structured resume content is organized in `content/`.
- **Purpose:** Enforce a consistent, ATS-optimized data structure that bridges raw materials and LaTeX templates.

## 2. Core Components

- `content/basics/profile.md` (Profile Schema): Personal identity fields -- name, role, email, phone, location, links.
- `content/basics/skills.md` (Skills Schema): Categorized skill groups with explicit ATS keyword grouping. Format: `* **Category:** **Skill** (Detail), Skill`.
- `content/education/university.md` (Education Schema): Structured entries with fields: institution, degree, start_date, end_date, gpa, courses.
- `content/experience/` (Experience Schema): Per-entry files with XYZ (Action-Context-Result) bullet format.
- `content/projects/` (Projects Schema): Per-entry files requiring project URL. XYZ bullet format.
- `content/publications/` (Publications Schema): Per-entry files requiring publication link.
- `content/awards/` (Awards Schema): Per-entry files for honors and recognitions.

## 3. Execution Flow (LLM Retrieval Map)

- **1. Schema Declaration:** Each `content/` file declares its schema via HTML comments at the top (e.g., `content/basics/profile.md:1-4` references `resume-architecture-spec.md Layer 1`).
- **2. Field Mapping:** AI Copilot maps raw `master-data/` content to the declared fields during Phase 2 (Convergence).
- **3. XYZ Format Enforcement:** All bullet points in experience, projects, and publications follow Action-Context-Result pattern.
- **4. Template Consumption:** LaTeX templates in `templates/` read `content/` files by section directory structure.

## 4. Design Rationale

- **No Summary Section:** Maximizes space for technical depth (No Fluff principle).
- **Evidence-Based:** Projects require URLs, publications require links -- no unverifiable claims.
- **ATS Keyword Grouping:** Skills explicitly categorized for automated resume screening systems.
