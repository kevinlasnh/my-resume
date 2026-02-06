# How to Build LaTeX PDF (Phase 3: Build)

A guide for injecting structured content into LaTeX templates and compiling to PDF.

1. **Verify Content Readiness:** Ensure all required `content/` files are populated and follow schema spec. Check `/llmdoc/architecture/content-schema.md` for the expected file structure.

2. **Select LaTeX Template:** Choose or create a template in `templates/`. Templates consume `content/` files by section directory structure.

3. **Inject Content:** Map `content/` fields into LaTeX template variables:
   - `content/basics/profile.md` -> header section (name, contact, links)
   - `content/basics/skills.md` -> skills section (categorized keywords)
   - `content/education/` -> education section
   - `content/experience/` -> experience section
   - `content/projects/` -> projects section
   - `content/publications/` -> publications section
   - `content/awards/` -> awards section

4. **Compile PDF:** Use Overleaf (upload template + content) or local LaTeX toolchain:
   ```bash
   pdflatex resume.tex
   ```

5. **Verify Output:** Review the generated PDF for formatting, content accuracy, and ATS compatibility. Confirm no fluff or unverifiable claims remain.
