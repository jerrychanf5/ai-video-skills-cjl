# AI 视频创作 Skill 套件

> 帮助剪辑、运营同事用 AI 做视频创意发散和提示词生成/优化。

## 这是什么

两个 Claude Code Skill，配合知识库使用：

| Skill | 作用 | 触发场景 |
|---|---|---|
| **ai-video-creative** | 创意发散：帮你打开思路，给出多种视频形态/风格方向参考 | "怎么拍""有什么形式""给点创意方向" |
| **ai-video-prompt** | 提示词生成与优化：把想法转成可直接粘贴使用的提示词 | "帮我写提示词""优化这段提示词" |

两个 Skill 各自独立可用，也可串联使用。

## 快速安装（一行命令）

```bash
curl -fsSL https://raw.githubusercontent.com/jerrychanf5/ai-video-skills-cjl/main/install.sh | bash
```

脚本会自动检测你已安装的 AI 工具，并安装到对应目录（支持 Claude Code、Codex、Cursor、OpenClaw、Gemini CLI、Baoyu 等）。

**后续更新**：重新执行同一行命令即可拉取最新版本。

## 使用流程

```
入口 A：从零开始（需要创意 + 提示词）
  说"我想做一个XX视频，帮我想想怎么拍"
  → ai-video-creative 给出 2-3 个方向参考
  → 你选一个方向，说"帮我写提示词"
  → ai-video-prompt 生成可直接粘贴的提示词

入口 B：已有想法，直接写提示词
  说"我想拍一个园林推镜，缓慢推进，黄昏光线……"
  → ai-video-prompt 直接生成提示词

入口 C：已有提示词，要优化
  粘贴你的提示词，说"帮我优化一下"
  → ai-video-prompt 执行 Vanity Zoom/负向词摆放等五项检查
```

## 目录结构

```
├── skills/
│   ├── ai-video-creative/SKILL.md    # 创意发散 Skill
│   └── ai-video-prompt/SKILL.md      # 提示词生成与优化 Skill
├── docs/
│   ├── AI视频创作通用手册.md          # 通用知识手册（团队学习用）
│   └── 影视飓风AI提示词学习版.md       # 喂给 AI 的知识注入文件
└── templates/
    └── 内容构思单模板.md               # 创意到提示词的交接模板
```

## 反馈与需求

- **提需求/报问题**：[提交 Issue](https://github.com/jerrychanf5/ai-video-skills-cjl/issues/new)
- **使用反馈**：在 Issue 中描述你遇到了什么问题、期望什么效果
- **更新获取**：`git pull` 即可拉取最新版本

## 更新日志

- v1.0 (2026-10-21)：首次发布
