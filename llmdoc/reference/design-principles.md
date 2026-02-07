# Design Principles

This document provides a reference for the core design principles governing the my-resume project.

## 1. Core Summary

The project enforces five non-negotiable design principles: strict kebab-case naming, no fluff (no Summary section), evidence-based claims (URLs required), ATS-optimized keyword grouping, and privacy-first (no photos, no full addresses). These principles apply across all three tiers of the data flow pipeline.

## 2. Source of Truth

- **Primary Code**: `CLAUDE.md:72-78` - Five design principles definition
- **Spec Source of Truth**: `CLAUDE.md:82-88` - Repository is the single source of truth; external G-drive files are mirrors only
- **Content Schema**: `/llmdoc/architecture/content-schema.md` - How principles map to schema fields
- **Related Architecture**: `/llmdoc/architecture/three-tier-data-flow.md` - Tier structure context

## 3. Principles

| Principle | Rule | Enforcement Point |
|-----------|------|-------------------|
| **Kebab-Case** | All files and directories use kebab-case | All tiers |
| **No Fluff** | No Summary section; maximize technical depth | Tier 2 (content/) |
| **Evidence-Based** | Projects must have URL; publications must have link | Tier 2 (content/) |
| **ATS-Optimized** | Skills explicitly grouped by category with keywords; incremental filling (add as you discover) | Tier 2 (content/skills.md) |
| **Privacy-First** | No photos, no full addresses, no sensitive PII | All tiers |

## 4. Role Assignments

| Role | Responsibility | Tier |
|------|---------------|------|
| **User** | Provides raw materials | Tier 1 (master-data/) |
| **Local Agent** | Infrastructure operations (Git, filesystem) | Cross-tier |
| **AI Copilot** | Context compression (Tier 1 -> Tier 2) | Tier 1 -> Tier 2 |
