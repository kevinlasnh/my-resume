# Workflows Overview

## 1. Identity

- **What it is:** An "edit-export-version control" workflow pattern combining online editor with local Git repository.
- **Purpose:** Separate resume editing from version control, enabling multiple resume variants with full change history.

## 2. High-Level Description

The workflow integrates Reactive Resume (https://rxresu.me/) as the primary editing interface with local Git for version control. Data flows in one direction: Reactive Resume exports JSON to `data/resume.json` (source of truth) and PDF to `pdf/` (distribution format). Git tracks all JSON changes, creating an auditable version history. Important milestones are archived in `versions/` for long-term retention. This separation allows maintaining multiple resume variants (general, English, company-customized) through file naming conventions rather than Git branches.
