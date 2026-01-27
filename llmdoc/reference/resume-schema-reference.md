# Resume Schema Field Reference

This document provides a comprehensive reference for the Reactive Resume JSON Schema v5.0.0 field structure.

## 1. Core Summary

The Reactive Resume JSON Schema v5.0.0 defines a hierarchical structure with 7 root-level properties and 12 predefined section types. All items use UUID-based identification and support optional visibility control. HTML content is supported in summary, descriptions, and notes fields.

## 2. Source of Truth

- **Official Schema:** `https://rxresu.me/schema.json` - The JSON Schema definition for validation
- **Schema Documentation:** `https://docs.rxresu.me/guides/json-resume-schema` - Detailed field descriptions
- **Project Data:** `data/resume.json` - The primary resume data file in this project
- **Related Architecture:** `/llmdoc/architecture/resume-json-schema.md` - Schema structure and relationships

## 3. Root-Level Properties

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `$schema` | string | Yes | URL to JSON Schema: `"https://rxresu.me/schema.json"` |
| `version` | string | Yes | Schema version: const `"5.0.0"` |
| `picture` | object | Yes | Photo configuration (url, size, rotation, aspectRatio, borders, shadows) |
| `basics` | object | Yes | Personal information (name, headline, email, phone, location, website, customFields) |
| `summary` | object | Yes | Professional summary (title, columns, hidden, content as HTML) |
| `sections` | object | Yes | Container for all 12 predefined sections |
| `customSections` | array | Yes | User-defined custom sections |
| `metadata` | object | Yes | Design and layout settings |

## 4. Predefined Sections

The `sections` object contains 12 predefined sections. Each section has an `items` array with the following common patterns:

| Section Key | Item Fields | Description |
|-------------|-------------|-------------|
| `profiles` | id, hidden, icon, network, username, website | Social/professional profiles |
| `experience` | id, hidden, company, position, location, period, website, description | Work experience |
| `education` | id, hidden, school, degree, area, grade, location, period, website, description | Academic background |
| `projects` | id, hidden, name, period, website, description | Project portfolio |
| `skills` | id, hidden, icon, name, proficiency, level, keywords | Skills and competencies |
| `languages` | id, hidden, language, fluency, level | Language proficiency |
| `interests` | id, hidden, icon, name, keywords | Hobbies and interests |
| `awards` | id, hidden, title, awarder, date, website, description | Awards and honors |
| `certifications` | id, hidden, title, issuer, date, website, description | Professional certifications |
| `publications` | id, hidden, title, publisher, date, website, description | Publications and research |
| `volunteer` | id, hidden, organization, location, period, website, description | Volunteer work |
| `references` | id, hidden, name, position, website, phone, description | Professional references |

## 5. Common Field Patterns

**UUID Identification:**
- All items include an `id` field with UUID v4 format for unique identification

**Website Object:**
```json
{
  "url": "https://example.com",
  "label": "Example Site"
}
```

**Period Object:**
- Used in experience, education, projects, volunteer sections
- Contains start/end dates or present status

**Visibility Control:**
- `hidden: boolean` at section level and item level
- Allows non-destructive content filtering

## 6. Metadata Structure

| Field | Description |
|-------|-------------|
| `template` | Resume template name (13 options: azurill, bronzor, chikorita, ditto, ditgar, gengar, glalie, kakuna, lapras, leafish, onyx, pikachu, rhyhorn) |
| `layout` | Page layout (sidebarWidth 10-50%, pages array with main/sidebar columns) |
| `css` | Custom CSS settings (enabled, value) |
| `page` | Page settings (gapX, gapY, marginX, marginY, format, locale, hideIcons) |
| `design` | Visual design (level icon/type, colors for primary/text/background) |
| `typography` | Font settings (body and heading with fontFamily, fontWeights, fontSize, lineHeight) |
| `notes` | Personal notes (HTML, not displayed on resume) |

## 7. HTML Content Fields

The following fields support HTML-formatted strings:
- `summary.content`
- All `description` fields in section items
- `metadata.notes`
