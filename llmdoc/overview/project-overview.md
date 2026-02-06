# Project Overview

## 1. Identity

- **What it is:** A three-tier data flow pipeline for personal resume management (Raw -> Schema -> LaTeX View).
- **Purpose:** Separate raw material collection from structured content authoring and final PDF generation, enabling AI-assisted resume building with full Git version control.

## 2. High-Level Description

This project implements a three-tier architecture for resume lifecycle management. Tier 1 (`master-data/`) serves as a raw data lake where the user freely records career materials without format constraints. Tier 2 (`content/`) is the schema layer where AI Copilot compresses raw materials into structured, ATS-optimized content following the XYZ (Action-Context-Result) format. Tier 3 (`templates/`) holds LaTeX templates that consume Tier 2 content to produce PDF output via Overleaf or local compilation. The workflow follows three phases: Divergence (free-form capture), Convergence (AI-assisted compression), and Build (LaTeX compilation). All files use strict kebab-case naming. The project prioritizes technical depth over fluff, evidence-based claims, and privacy-first principles.
