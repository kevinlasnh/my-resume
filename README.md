# My Resume

> 个人简历版本控制仓库

---

## 📁 仓库结构

```
my-resume/
├── README.md                 # 仓库说明文档
├── data/                     # 简历数据文件
│   └── resume.json           # Reactive Resume 导出的 JSON 数据
├── pdf/                      # PDF 版本简历
│   └── .gitkeep              # 保持目录结构
├── docs/                     # GitHub Pages 静态网页 (可选)
│   └── .gitkeep              # 保持目录结构
├── versions/                 # 历史版本存档
│   └── .gitkeep              # 保持目录结构
├── assets/                   # 静态资源 (图片、CSS 等)
│   └── .gitkeep              # 保持目录结构
├── llmdoc/                   # LLM 导向的项目文档系统
│   ├── index.md              # 文档索引
│   ├── overview/             # 项目概览文档
│   ├── architecture/         # 架构设计文档
│   ├── guides/               # 操作指南
│   └── reference/            # 参考规范
├── .gitignore                # Git 忽略文件
└── LICENSE                   # 许可证文件
```

## 🚀 使用说明

### 简历编辑工作流

1. 使用 [Reactive Resume](https://rxresu.me/) 在线编辑简历
2. 导出 JSON 文件到 `data/resume.json` 进行版本控制
3. 导出 PDF 文件到 `pdf/` 目录用于分发
4. 提交修改到 Git 仓库

### 版本控制

每次修改简历后，使用有意义的提交信息：

```bash
git add .
git commit -m "feat: 更新工作经历 - 添加 XX 公司项目经验"
git push origin main
```

### 命名规范

PDF 文件命名建议：
- `姓名_岗位_年份.pdf`
- `姓名_英文版.pdf`
- `姓名_某公司定制版.pdf`

## 📋 简历版本

| 版本   | 用途          | 最后更新 |
| ------ | ------------- | -------- |
| 通用版 | 通用求职      | -        |
| 英文版 | 外企/国际岗位 | -        |

## 📚 项目文档

本项目包含完整的 `llmdoc/` 文档系统，为 LLM Agent 和开发者提供项目说明。

- **文档索引**: 查看 [llmdoc/index.md](llmdoc/index.md) 获取完整文档导航
- **快速开始**: 从 [项目概览](llmdoc/overview/project-overview.md) 开始了解
- **操作指南**: 参考 [编辑更新简历](llmdoc/guides/edit-and-update-resume.md) 进行日常操作

## 🔗 相关链接

- **在线简历**: `待添加`
- **Reactive Resume**: https://rxresu.me/

---

## 📝 更新日志

| 日期       | 版本 | 更新内容                           |
| ---------- | ---- | ---------------------------------- |
| 2026-01-27 | v1.1 | 添加 llmdoc 文档系统               |
| 2026-01-27 | v1.0 | 初始化仓库结构                     |

---

**⚠️ 注意事项**

- 此仓库建议设置为**私有仓库**以保护隐私
- 请勿在公开仓库中包含敏感个人信息（完整身份证号、详细地址等）
- 定期备份 JSON 数据文件
