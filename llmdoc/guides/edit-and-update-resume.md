# How to Edit and Update Resume

1. **Edit Online:** Open [Reactive Resume](https://rxresu.me/) and make changes to your resume content.

2. **Export JSON:** Export your resume as JSON and save to `data/resume.json` - this is your version-controlled source of truth.

3. **Export PDF:** Export your resume as PDF and save to `pdf/` directory using the naming convention: `姓名_岗位_年份.pdf` (e.g., `ZhangSan_Frontend_2026.pdf`).

4. **Commit Changes:** Stage and commit with a descriptive message:
   ```bash
   git add .
   git commit -m "feat: 更新工作经历 - 添加 XX 公司项目经验"
   ```

5. **Verify Success:** Run `git log` to confirm your commit appears in history.
