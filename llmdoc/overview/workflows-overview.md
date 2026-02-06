# Workflows Overview

## 1. Identity

- **What it is:** A three-phase workflow pattern (Divergence -> Convergence -> Build) for resume content lifecycle.
- **Purpose:** Decouple raw material collection, structured content authoring, and PDF generation into distinct phases with clear role assignments.

## 2. High-Level Description

The workflow divides resume creation into three sequential phases. **Phase 1 (Divergence):** The user freely records raw career materials in `master-data/` -- project details, work experiences, education notes -- without any format constraints. **Phase 2 (Convergence):** AI Copilot reads `master-data/` and compresses it into `content/` files that strictly follow the schema specification, using XYZ (Action-Context-Result) bullet format for maximum ATS compatibility. **Phase 3 (Build):** Structured `content/` files are injected into LaTeX templates in `templates/`, then compiled to PDF via Overleaf or local LaTeX toolchain. Role separation is explicit: User owns Tier 1 input, Local Agent handles infrastructure (Git, filesystem), and AI Copilot performs context compression (Tier 1 -> Tier 2).
