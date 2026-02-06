# How to Add Raw Material (Phase 1: Divergence)

A guide for recording raw career materials into the Tier 1 data lake.

1. **Identify the Category:** Determine which master-data file to use:
   - `master-data/education-master.md` -- courses, grades, activities, scholarships
   - `master-data/projects-master.md` -- project details, dev logs, tech stack
   - `master-data/experience-master.md` -- work tasks, tools used, outcomes

2. **Write Freely:** Open the target file and append your content in any format. No schema constraints apply at Tier 1. Include as much detail as possible -- failed attempts, specific metrics, tool versions, team context.

3. **Use Kebab-Case for New Files:** If adding a new master-data file, name it with kebab-case (e.g., `certifications-master.md`). Reference `/llmdoc/reference/coding-conventions.md` for naming rules.

4. **Commit the Material:** Stage and commit with a descriptive message:
   ```bash
   git add master-data/
   git commit -m "feat: 添加 XX 项目原始素材"
   ```

5. **Verify:** Run `git log --oneline -1` to confirm the commit was recorded.
