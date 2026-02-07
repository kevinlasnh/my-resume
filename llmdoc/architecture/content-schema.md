# Architecture of Content Schema Layer

## 1. Identity

- **What it is:** The Tier 2 schema specification defining how structured resume content is organized in `content/`.
- **Purpose:** Enforce a consistent, ATS-optimized data structure that bridges raw materials and LaTeX templates.

## 2. Core Components

- `content/profile.md` (Profile Schema): Personal identity fields -- name, role, email, phone, location, links (GitHub mandatory, LinkedIn TBD).
- `content/skills.md` (Skills Schema): Categorized skill groups with explicit ATS keyword grouping. Format: `* **Category:** **Skill** (Detail), Skill`. **Note:** Skills use incremental filling strategy — add as you discover, no pressure for completeness.
- `content/education.md` (Education Schema): Structured entries with fields: institution, degree, start_date, end_date, gpa, courses.
- `content/experience.md` (Experience Schema): All experience entries in single file with XYZ (Action-Context-Result) bullet format.
- `content/projects.md` (Projects Schema): All project entries in single file requiring project URL. XYZ bullet format.
- `content/publications.md` (Publications Schema): All publication entries in single file requiring publication link.
- `content/awards.md` (Awards Schema): All award entries in single file.

## 3. Execution Flow (LLM Retrieval Map)

- **1. Schema Declaration:** Each `content/*.md` file declares its schema via HTML comments at the top (e.g., `content/profile.md:1-4` references Layer 1 spec).
- **2. Field Mapping:** AI Copilot maps raw `master-data/` content to the declared fields during Phase 2 (Convergence).
- **3. XYZ Format Enforcement:** All bullet points in experience, projects, and publications follow Action-Context-Result pattern.
- **4. Template Consumption:** LaTeX templates in `templates/sections/` read from flat `content/*.md` files by matching file name to section name.

## 4. Design Rationale

- **No Summary Section:** Maximizes space for technical depth (No Fluff principle).
- **Evidence-Based:** Projects require URLs, publications require links -- no unverifiable claims.
- **ATS Keyword Grouping:** Skills explicitly categorized for automated resume screening systems.
