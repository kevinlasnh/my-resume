# Resume Data Format Overview

## 1. Identity

- **What it is:** The Reactive Resume JSON Schema v5.0.0 - a structured JSON format for resume data.
- **Purpose:** Serves as the single source of truth for resume content, enabling version control, data validation, and cross-platform portability.

## 2. High-Level Description

The resume data format is a JSON Schema conforming to JSON Schema draft 2020-12 specifications, exported from [Reactive Resume](https://rxresu.me/). The schema organizes resume data into 7 top-level properties: `picture`, `basics`, `summary`, `sections`, `customSections`, `metadata`, and `version`. The `sections` object contains 12 predefined section types (profiles, experience, education, projects, skills, languages, interests, awards, certifications, publications, volunteer, references). Each item uses UUID-based identification and supports visibility control via `hidden` boolean fields. The `metadata` section stores template, layout, typography, and design settings. This format separates content from presentation, allowing the same JSON data to generate different visual outputs (PDF, web) while maintaining complete version history through Git.
