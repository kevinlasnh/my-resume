# My Resume

> Three-Tier Data Flow Resume System (Raw -> Schema -> LaTeX View)

---

## Architecture

```
my-resume/
├── master-data/          # [Tier 1] Raw Data Lake - 原始素材库
│   ├── education-master.md
│   ├── projects-master.md
│   └── experience-master.md
├── content/              # [Tier 2] Schema Layer - 结构化简历内容
│   ├── basics/           # 个人信息 & 技能
│   ├── education/        # 教育经历
│   ├── projects/         # 项目经历
│   ├── experience/       # 工作经历
│   ├── publications/     # 论文发表
│   └── awards/           # 获奖经历
├── templates/            # [Tier 3] View Layer - LaTeX 模板
├── llmdoc/               # LLM 导向的项目文档系统
├── LICENSE
└── .gitignore
```

---

## Workflow

### Phase 1: Divergence (发散)

在 `master-data/` 中自由记录所有经历素材，不受格式限制。

### Phase 2: Convergence (收敛)

AI Copilot 将 `master-data/` 中的原始素材压缩为符合 Schema 规范的 `content/` 文件，遵循 XYZ (Action-Context-Result) 格式。

### Phase 3: Build (构建)

将 `content/` 内容注入 LaTeX 模板，通过 Overleaf 或本地编译生成 PDF。

---

## Naming Convention

所有文件和目录严格使用 **kebab-case**（如 `mr-cooking.md`）。

---

## Links

- **GitHub**: https://github.com/kevinlasnh/my-resume
- **Docs**: See [llmdoc/index.md](llmdoc/index.md)
