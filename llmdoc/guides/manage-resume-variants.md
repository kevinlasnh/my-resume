# How to Manage Resume Variants

A guide for creating and maintaining multiple resume versions (general, English, company-customized).

1. **Identify Variant Need:** Determine the variant type needed:
   - **General:** Standard resume for most applications
   - **English:** For international or foreign companies
   - **Custom:** Tailored for specific company/position

2. **Edit in Reactive Resume:** Open [Reactive Resume](https://rxresu.me/) and customize content:
   - English variant: Translate all content to English
   - Custom variant: Emphasize relevant skills/experience for target company
   - Use the `hidden` field to control section visibility without deleting data

3. **Export with Correct Name:** Export PDF to `pdf/` directory using the naming convention:
   ```
   General:   Name_Position_Year.pdf
   English:   Name_English.pdf
   Custom:    Name_Company_Custom.pdf
   ```

4. **Update Version Table:** Edit `README.md` version tracking table:
   ```markdown
   | 变体类型 | 用途场景 | 最后更新 |
   |---------|---------|---------|
   | 通用版   | 通用求职 | 2026-01-27 |
   | 英文版   | 外企/国际岗位 | 2026-01-27 |
   | XX公司定制版 | XX公司 | 2026-01-27 |
   ```

5. **Commit Variant:** Stage and commit with descriptive message:
   ```bash
   git add pdf/ README.md
   git commit -m "feat: 添加英文版简历"
   ```
