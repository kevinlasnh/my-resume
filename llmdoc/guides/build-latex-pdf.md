# How to Build LaTeX PDF (Phase 3: Build)

A guide for injecting structured content into LaTeX templates and compiling to PDF via Overleaf.

1. **Verify Content Readiness:** Ensure all required `content/` files are populated and follow schema spec. Check `/llmdoc/architecture/content-schema.md` for the expected file structure.

2. **Understand Template Structure:** The template uses a modular `\input{}` architecture. `templates/resume.tex` is the main entry file that assembles 7 section files via `\input{sections/header}`, `\input{sections/education}`, etc. Custom heading commands are defined in `templates/resume-commands.cls`.

3. **Inject Content into Section Files:** Map `content/` fields into the corresponding `templates/sections/*.tex` files using the custom commands from `resume-commands.cls`:
   - `content/basics/profile.md` -> `sections/header.tex` (Layer 1: plain text)
   - `content/education/` -> `sections/education.tex` (Layer 2: `\resumeSubheading` 4 args)
   - `content/basics/skills.md` -> `sections/skills.tex` (Layer 3: categorized keywords)
   - `content/projects/` -> `sections/projects.tex` (Layer 4: `\resumeProjectHeading` 4 args)
   - `content/experience/` -> `sections/experience.tex` (Layer 5: `\resumeExperienceHeading` 5 args)
   - `content/publications/` -> `sections/publications.tex` (Layer 6A: `\resumePublication` 6 args)
   - `content/awards/` -> `sections/awards.tex` (Layer 6B: `\resumeAward` 3 args)

4. **Compile via Overleaf:** Upload the entire `templates/` directory to Overleaf. Set compiler to **pdfLaTeX**. The project has no local LaTeX compiler; Overleaf is the primary build environment.

5. **Verify Output:** Review the generated PDF for formatting, content accuracy, and ATS compatibility. Confirm no fluff or unverifiable claims remain.
