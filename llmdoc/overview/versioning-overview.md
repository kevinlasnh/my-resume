# Versioning Overview

## 1. Identity

- **What it is:** A three-tier resume version management system combining Git version control with file-based archival.
- **Purpose:** Maintain a single source of truth for resume data while supporting multiple distribution formats and historical tracking.

## 2. High-Level Description

The versioning strategy follows a "data-first" philosophy where `data/resume.json` serves as the single source of truth. JSON files are tracked by Git for granular change history. PDF exports in `pdf/` serve as distribution-ready formats. The `versions/` directory provides long-term archival of important resume snapshots. This separation ensures data portability, version traceability, and format flexibility.

## 3. Three Layers

```
Layer 1: Data Layer (data/)        - JSON source, Git-tracked
Layer 2: Distribution Layer (pdf/) - Current PDF versions for distribution
Layer 3: Archive Layer (versions/) - Historical snapshots
```

## 4. Key Principles

- **Single Source of Truth**: `data/resume.json` is the authoritative data source
- **Git for Data**: All JSON changes tracked via Git commits
- **File-Based Archival**: PDF versions stored in `versions/` for quick reference
- **Variant Naming**: File naming conventions distinguish variants (general, English, company-customized)
- **Privacy-First**: Repository should be private; sensitive data excluded
