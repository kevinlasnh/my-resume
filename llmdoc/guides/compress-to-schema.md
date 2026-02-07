# How to Compress Raw Material to Schema (Phase 2: Convergence)

A guide for AI Copilot to transform Tier 1 raw materials into Tier 2 structured content.

1. **Read Raw Materials:** Open the relevant `master-data/{category}/*.md` file(s) to understand the full scope of available content. Cross-reference multiple master files if the entry spans categories.

2. **Identify Target Schema:** Determine the correct `content/*.md` file (flat structure, 7 files total) and check the HTML comment header for field requirements. Reference `/llmdoc/architecture/content-schema.md` for the full schema map.

3. **Apply XYZ Format:** For experience, projects, and publications entries, compress each bullet point into Action-Context-Result format. Strip filler words and maximize technical specificity.

4. **Enforce Design Principles:** Validate against `/llmdoc/reference/design-principles.md`:
   - Every project must have a URL
   - Every publication must have a link
   - Skills must be explicitly grouped by category for ATS
   - No summary section; no fluff

5. **Write to Content File:** Save the structured output to the appropriate `content/` file using kebab-case naming. Commit:
   ```bash
   git add content/
   git commit -m "feat: 结构化 XX 内容"
   ```

6. **Verify:** Confirm the file header comments match the schema spec and all required fields are populated.
