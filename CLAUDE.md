# CLAUDE.md — my-resume

## What Is This Repo?

三层数据流简历系统 (Raw -> Schema -> LaTeX View)。将个人职业素材从自由记录到结构化内容再到 PDF 输出，全流程 Git 版本控制。

目标人群: Robotics/CS Student & Researcher。

---

## Directory Structure

```
my-resume/
├── master-data/           # [Tier 1] Raw Data Lake — 自由记录，无格式约束
│   ├── basics/
│   ├── education/         # 成绩单、课程笔记等原始素材
│   ├── projects/
│   ├── experience/
│   ├── publications/
│   └── awards/
├── content/               # [Tier 2] Schema Layer — 结构化简历内容 (Single Source of Truth)
│   ├── profile.md         # Layer 1: Header
│   ├── education.md       # Layer 2: Education
│   ├── skills.md          # Layer 3: Technical Skills
│   ├── projects.md        # Layer 4: Selected Projects
│   ├── experience.md      # Layer 5: Professional Experience
│   ├── publications.md    # Layer 6A: Publications
│   └── awards.md          # Layer 6B: Awards
├── templates/             # [Tier 3] View Layer — LaTeX (Jake's Resume + Roboto)
│   ├── resume-commands.cls
│   ├── resume.tex
│   └── sections/          # 7 个 section 模板 (header/education/skills/projects/experience/publications/awards)
├── llmdoc/                # 项目文档系统
├── CLAUDE.md              # 本文件
└── .gitignore
```

---

## Three-Tier Data Flow

| Tier | 目录 | 角色 | 约束 |
|------|------|------|------|
| **Tier 1** | `master-data/` | Raw Data Lake — 自由脑暴 | 无格式约束，什么都可以放 |
| **Tier 2** | `content/` | Schema Layer — 结构化内容 | 严格遵循 Spec (XYZ 格式、字段约束) |
| **Tier 3** | `templates/` | View Layer — LaTeX 渲染 | 从 Tier 2 生成，不含业务逻辑 |

数据流方向: `master-data/ → content/ → templates/ → PDF`，严格单向，不可逆流。

---

## Workflow (三阶段)

### Phase 1: Divergence (发散)
- **执行者:** User
- **目标:** 向 `master-data/{category}/` 自由记录原始素材
- **规则:** 忘掉格式、字数、STAR 方法，尽可能多写

### Phase 2: Convergence (收敛)
- **执行者:** AI Copilot
- **目标:** 将 `master-data/` 压缩为 `content/*.md`
- **规则:** 严格遵循 Spec 的 Schema 定义，XYZ 格式，过滤 fluff

### Phase 3: Build (构建)
- **执行者:** User / Overleaf
- **目标:** 将 `content/` 注入 `templates/` 编译 PDF
- **规则:** 手动同步到 Overleaf 编译，验证 ATS 可读性

---

## Design Principles (不可违反)

1. **Kebab-Case:** 所有文件和目录名使用 kebab-case
2. **No Fluff:** 无 Summary section，最大化技术深度
3. **Evidence-Based:** 每个项目必须有 URL，每篇论文必须有链接
4. **ATS-Optimized:** Skills 按类别分组，关键词显式列出
5. **Privacy-First:** 无照片、无完整地址、无敏感个人信息

---

## Spec 规范

**Source of Truth: 本仓库。** 以仓库当前状态为准，外部文件仅作为便捷查阅的镜像。

外部镜像文件 (不纳入仓库，由同步规则自动更新):
- **架构规范:** `G:\我的云端硬盘\SecondBrain\work\resume\resume-architecture-spec.md`
- **工作流规范:** `G:\我的云端硬盘\SecondBrain\work\resume\workflow.md`

### Spec 优先规则 ⚠️

**AI Copilot 修改简历内容时，必须优先遵循 Spec 定义：**

1. **修改 `content/` 前:** 必须先读取 Spec 的 Layer Specifications (Section 3)，确认字段约束和格式要求
2. **当 CLAUDE.md 与 Spec 冲突时:** 以 Spec 为准
3. **Spec 关键约束摘要:**
   - **Layer 3 Skills:** Ecosystem Binding (`**Python** (PyTorch, ROS2)`), Bold=Proficient, 禁止 fluff tools
   - **Layer 4 Projects:** URL MANDATORY, 3 bullets XYZ 格式, tech_stack 数组
   - **Layer 5 Experience:** company_desc MANDATORY (非 Big Tech), bullet 必须提及具体工具
   - **Layer 6A Publications:** status MANDATORY, Submitted 必须有 arXiv 链接
   - **Layer 6B Awards:** 仅国家级/国际级/Hackathon，校级奖学金归入 Education

---

## Role Assignments

| 角色 | 职责 | 操作范围 |
|------|------|---------|
| **User** | 提供原始素材，审核最终内容 | Tier 1 输入，Tier 2 审核 |
| **AI Copilot** | Context Compression (发散→收敛) | Tier 1 → Tier 2 |
| **Local Agent** | 基础设施操作 (Git, 文件系统) | 跨层 |

---

## Modification Rules

1. **修改 content/ 前:** 必须先读取 Spec 规范，确认字段约束
2. **修改 templates/ 前:** 必须先读取对应的 `content/*.md`，确保内容同步
3. **Tier 2 → Tier 3 同步:** 修改 `content/` 后必须同步更新 `templates/sections/` 中对应的 .tex 文件
4. **命名:** 新建任何文件必须使用 kebab-case
5. **Commit:** 遵循 Conventional Commits 格式

---

## Session Rules

### "同步仓库进度" 触发规则
当用户说"同步仓库进度"时，必须同时执行以下三项：
1. **llmdoc 系统:** 调用 `tr:recorder` agent 更新 `llmdoc/` 文档，反映仓库实际状态
2. **Planning with Files 系统:** 更新 `task_plan.md`、`findings.md`、`progress.md`，记录当前工作进度和决策
3. **外部镜像同步:** 将仓库最新的架构规范和工作流描述反向写入 G 盘外部文件:
   - `G:\我的云端硬盘\SecondBrain\work\resume\resume-architecture-spec.md`
   - `G:\我的云端硬盘\SecondBrain\work\resume\workflow.md`

三项必须同时执行，确保仓库、文档系统、外部镜像三方一致。

### "开始新工作" 触发规则
当开始一项新的工作任务时，必须先使用 Planning with Files 系统进行规划：
1. 创建或更新 `task_plan.md` — 定义目标、拆分阶段、列出待办
2. 创建或更新 `findings.md` — 记录调研发现
3. 创建或更新 `progress.md` — 初始化会话日志

规划完成并经用户确认后，才可开始执行。

### Skills 撰写规则 ⚠️

**Skills 是增量填充的，不是一次性完成的：**

1. **随时添加:** 发现自己会用某个工具/技术时，立即添加到 `content/skills.md`
2. **不要追求完整:** 不需要一次性列出所有技能，留白比遗漏强
3. **定期回顾:** 每次做项目/实习/研究后，回头看 Skills，补充新掌握的技能
4. **Spec 约束始终有效:** 添加时仍需遵循 Ecosystem Binding、Bold 区分、禁止 fluff rules

---

## Documentation

详细文档见 `llmdoc/index.md`。开始工作前应先阅读 llmdoc 了解项目全貌。
