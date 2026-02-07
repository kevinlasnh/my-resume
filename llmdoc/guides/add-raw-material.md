# How to Add Raw Material (Phase 1: Divergence)

A guide for recording raw career materials into the Tier 1 data lake.

1. **Identify the Category:** Determine which master-data subdirectory to use:
   - `master-data/education/education-master.md` -- courses, grades, activities, scholarships
   - `master-data/projects/projects-master.md` -- project details, dev logs, tech stack
   - `master-data/experience/experience-master.md` -- work tasks, tools used, outcomes
   - `master-data/basics/` -- profile/skills raw notes (reserved)
   - `master-data/publications/` -- publication raw materials (reserved)
   - `master-data/awards/` -- award raw materials (reserved)

2. **Write Freely:** Open the target file and append your content in any format. No schema constraints apply at Tier 1. Include as much detail as possible -- failed attempts, specific metrics, tool versions, team context.

3. **Use Kebab-Case for New Files:** If adding a new master-data file, place it in the matching subdirectory with kebab-case naming (e.g., `master-data/projects/robotics-master.md`). Reference `/llmdoc/reference/coding-conventions.md` for naming rules.

4. **Commit the Material:** Stage and commit with a descriptive message:
   ```bash
   git add master-data/
   git commit -m "feat: 添加 XX 项目原始素材"
   ```

5. **Verify:** Run `git log --oneline -1` to confirm the commit was recorded.
