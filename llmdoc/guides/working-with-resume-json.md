# How to Work with Resume JSON Data

A concise guide for managing Reactive Resume JSON data in the my-resume project.

1. **Export JSON from Reactive Resume:**
   - Log in to [https://rxresu.me/](https://rxresu.me/) and edit your resume
   - Click the export button and select "JSON" format
   - Save the file to `data/resume.json` in your project directory
   - This JSON file serves as your single source of truth for version control

2. **Validate the JSON Structure:**
   - Ensure the file contains the `$schema` field pointing to `https://rxresu.me/schema.json`
   - Verify `version` is `"5.0.0"` at the root level
   - Use a JSON Schema validator to check against the official schema at `https://rxresu.me/schema.json`
   - All section items must have unique `id` fields (UUID format)

3. **Commit Changes to Git:**
   - After updating `data/resume.json`, stage the file: `git add data/resume.json`
   - Commit with conventional commit format: `git commit -m "feat: update work experience"`
   - The commit history provides a complete audit trail of all resume modifications
   - Reference `llmdoc/reference/git-conventions.md` for commit message guidelines

4. **Import JSON Back to Reactive Resume:**
   - To restore or edit an earlier version, copy the JSON from `data/resume.json`
   - In Reactive Resume, use the import function to load the JSON data
   - The editor will validate the schema and display your resume content
   - Make edits and re-export to update the JSON file

5. **Hide Content Without Deleting:**
   - Set `hidden: true` on any section or item to temporarily exclude it from the resume
   - This preserves data in Git while controlling what appears in PDF exports
   - Useful for maintaining company-specific or role-specific resume variants
