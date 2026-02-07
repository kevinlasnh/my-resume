# How to Build LaTeX PDF (Phase 3: Build)

A guide for injecting structured content into LaTeX templates and compiling to PDF via Overleaf.

1. **Verify Content Readiness:** Ensure all required `content/` files are populated and follow schema spec. Check `/llmdoc/architecture/content-schema.md` for the expected file structure.

2. **Understand Template Structure:** The template is a single-file architecture. `templates/resume.tex` contains all custom command definitions and all 7 sections inline. No external `.cls` file or `sections/` directory exists.

3. **Inject Content into resume.tex:** Map `content/` fields into the corresponding sections within `templates/resume.tex` using the inline custom commands:
   - `content/profile.md` -> Header section (Layer 1: plain text)
   - `content/education.md` -> Education section (Layer 2: `\resumeSubheading` 4 args)
   - `content/skills.md` -> Skills section (Layer 3: categorized keywords)
   - `content/projects.md` -> Projects section (Layer 4: `\resumeProjectHeading` 5 args, `\resumeProjectHeadingNoURL` 3 args)
   - `content/experience.md` -> Experience section (Layer 5: `\resumeExperienceHeading` 5 args)
   - `content/publications.md` -> Publications section (Layer 6A: `\resumePublication` 6 args)
   - `content/awards.md` -> Awards section (Layer 6B: `\resumeAward` 3 args)

4. **Compile via Overleaf:** Upload `templates/resume.tex` (single file) to Overleaf. Set compiler to **pdfLaTeX**. The project has no local LaTeX compiler; Overleaf is the primary build environment.

5. **Verify Output:** Review the generated PDF for formatting, content accuracy, and ATS compatibility. Confirm no fluff or unverifiable claims remain.
