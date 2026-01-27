# Architecture of Resume JSON Schema

## 1. Identity

- **What it is:** The structural architecture of Reactive Resume JSON Schema v5.0.0.
- **Purpose:** Defines how resume data is organized, related, and validated within the system.

## 2. Core Components

- `https://rxresu.me/schema.json` (Schema Definition): The official JSON Schema v5.0.0 that validates resume structure.
- `data/resume.json` (Resume Data): The primary JSON file storing all resume content and metadata.
- `README.md:28-34` (Workflow Reference): Documents the export/import workflow using Reactive Resume.

## 3. Execution Flow (LLM Retrieval Map)

### Root Level Structure

The resume JSON file follows this hierarchy:

```
data/resume.json
├── $schema (string): "https://rxresu.me/schema.json"
├── version (const): "5.0.0"
├── picture (object): Photo configuration
├── basics (object): Personal information
├── summary (object): Professional summary
├── sections (object): 12 predefined sections
├── customSections (array): User-defined sections
└── metadata (object): Design settings
```

### Section Data Flow

- **1. Content Creation:** User edits in Reactive Resume at `https://rxresu.me/`
- **2. JSON Export:** Schema-validated JSON exported to `data/resume.json:1`
- **3. Version Control:** Git commits track changes to the JSON file
- **4. Layout Reference:** `metadata.layout.pages[].main/sidebar` arrays reference section IDs by name or UUID

### Key Relationships

- **UUID Identification:** All items in sections use `id` fields (UUID v4) for unique references
- **Visibility Control:** Section-level and item-level `hidden` booleans control display without deletion
- **HTML Content Fields:** `summary.content`, all `description` fields, and `metadata.notes` accept HTML strings
- **Website Objects:** Standardized `{ url, label }` structure used across multiple section types

### Schema Validation

- **Schema URL:** `$schema` field points to `https://rxresu.me/schema.json`
- **Version Constraint:** `version` field is const `"5.0.0"`
- **Validation Tools:** JSON Schema draft 2020-12 compliant validators can verify data integrity

## 4. Design Rationale

The schema uses a "content-presentation separation" pattern. Resume content (basics, sections) is stored independently from presentation settings (metadata), allowing the same data source to generate multiple output formats. HTML support in description fields provides rich text formatting while maintaining JSON structure. The `hidden` pattern enables non-destructive content management—items can be temporarily hidden without deletion.
