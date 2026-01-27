# How to Archive a Resume Version

1. **Identify Version:** Determine which PDF from `pdf/` represents the version to archive (e.g., before a major update).

2. **Copy to Archive:** Copy the PDF to `versions/` with a timestamp:
   ```bash
   cp pdf/ZhangSan_Frontend_2026.pdf versions/ZhangSan_Frontend_2026_v1.0_20260127.pdf
   ```

3. **Commit Archive:** Record the archival in Git:
   ```bash
   git add versions/
   git commit -m "feat: 归档简历版本 v1.0 - 2026-01-27"
   ```

4. **Update Tracking Table:** Edit `README.md` version table to reflect the new archived version.

5. **Verify Success:** Confirm the file exists in `versions/` and Git history shows the commit.
