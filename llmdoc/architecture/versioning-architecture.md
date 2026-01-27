# Architecture of Versioning System

## 1. Identity

- **What it is:** A three-tier architecture separating source data, distribution formats, and historical archives.
- **Purpose:** Enable granular version control for resume data while maintaining quick access to distribution-ready formats.

## 2. Core Components

- `data/resume.json` (Single Source of Truth): Reactive Resume export containing all resume data following JSON Schema v5.0.0.
- `pdf/*.pdf` (Distribution Layer): Current PDF exports for active distribution and job applications.
- `versions/*.pdf` (Archive Layer): Historical snapshots of resume versions with timestamp-based naming.
- `.gitignore` (Privacy Controls): Excludes `drafts/` directory and sensitive files from version control.
- `README.md` (Version Tracking): Contains version table tracking different resume variants and their last update dates.

## 3. Execution Flow (LLM Retrieval Map)

```
+---------------------------------------------------------------+
|                    VERSIONING LIFECYCLE                       |
+---------------------------------------------------------------+

1. DATA CREATION (data/)
   ├─ Edit in Reactive Resume (https://rxresu.me/)
   ├─ Export JSON to data/resume.json
   └─ Git commit: "feat: description of changes"

2. DISTRIBUTION GENERATION (pdf/)
   ├─ Export PDF from Reactive Resume
   ├─ Save with naming convention: Name_Position_Year.pdf
   └─ Git commit includes both JSON and PDF

3. ARCHIVAL (versions/)
   ├─ Before major changes, copy PDF to versions/
   ├─ Add timestamp: Name_Position_Year_vX.Y_YYYYMMDD.pdf
   └─ Separate Git commit for archival record

4. DRAFT WORKFLOW (drafts/)
   ├─ Create drafts/ locally (excluded by .gitignore)
   ├─ Work on experimental versions
   └─ Move to pdf/ only when finalized
```

## 4. Data Flow

```
Reactive Resume (Online Editor)
         |
         +---> data/resume.json (Git tracked)  [Source of Truth]
         |
         +---> pdf/*.pdf (Git tracked)         [Distribution]
                   |
                   |---> versions/*.pdf (Git tracked) [Archive]
```

## 5. Design Rationale

- **Single-Source Pattern:** One JSON file eliminates synchronization issues between data sources.
- **Format Separation:** JSON for version control (diffable), PDF for distribution (universal).
- **Timeline Archival:** `versions/` preserves milestone versions without cluttering active distribution.
- **Draft Isolation:** `.gitignore` excludes `drafts/`, enabling experimentation without polluting version history.
