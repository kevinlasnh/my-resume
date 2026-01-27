# Project Overview

## 1. Identity

- **What it is:** A Git-based version control system for personal resume management.
- **Purpose:** Track resume changes over time, manage multiple variants (general, English, company-customized), and maintain a single source of truth using JSON format.

## 2. High-Level Description

This project integrates Reactive Resume (https://rxresu.me/) as the online editor with local Git version control. The workflow follows an "edit-export-version control" pattern: users edit resumes in Reactive Resume, export JSON to `data/resume.json` for version control, and export PDF to `pdf/` for distribution. Historical versions are archived in `versions/`. The project uses JSON Schema v5.0.0 for resume data structure and follows conventional commit practices (`feat:` prefix).
