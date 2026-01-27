# Architecture of Variant Management

## 1. Identity

- **What it is:** A naming-convention-based variant management system for maintaining multiple resume versions.
- **Purpose:** Support different resume variants (language-specific, company-customized) without Git branch complexity.

## 2. Core Components

- `pdf/` (Variant Storage): Holds multiple PDF files differentiated by naming convention.
- `README.md` (Variant Registry): Version tracking table listing all variants with last update timestamps.
- `data/` (Shared Source): Single JSON can generate multiple variants through Reactive Resume's export feature.

## 3. Variant Types

Based on `README.md` (Lines 45-50):

| Variant Type | Naming Pattern | Example | Use Case |
|-------------|---------------|---------|----------|
| General | `姓名_岗位_年份.pdf` | `ZhangSan_Frontend_2026.pdf` | Standard job applications |
| English | `姓名_英文版.pdf` | `ZhangSan_English.pdf` | International/foreign companies |
| Custom | `姓名_某公司定制版.pdf` | `ZhangSan_ByteDance_Custom.pdf` | Company-specific applications |

## 4. Variant Lifecycle

```
+------------------+     +----------------+     +-------------------+
| Create Variant   | --> | Export to PDF/ | --> | Update README     |
| (Reactive Resume)|     | (named file)   |     | (version table)   |
+------------------+     +----------------+     +-------------------+
```

**Workflow:**
1. **Edit Variant:** Use Reactive Resume to customize content (language, keywords, emphasis)
2. **Export PDF:** Save to `pdf/` with appropriate naming convention
3. **Update Registry:** Edit version table in `README.md` with timestamp
4. **Git Commit:** Record variant creation with descriptive message

## 5. Design Rationale

- **No Branch Strategy:** Variants coexist in single branch (`master`), reducing merge overhead
- **Human-Readable Names:** Naming conventions make variant identification intuitive
- **Shared Source:** All variants derive from same JSON schema, ensuring consistency
- **Registry Pattern:** README table provides quick variant reference without file system browsing
