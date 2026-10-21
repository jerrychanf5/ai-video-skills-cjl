#!/usr/bin/env bash
# AI 视频创作 Skill 套件 - 通用安装脚本
# 仓库：https://github.com/jerrychanf5/ai-video-skills-cjl
# 用法：curl -fsSL https://raw.githubusercontent.com/jerrychanf5/ai-video-skills-cjl/main/install.sh | bash

set -e

REPO="https://github.com/jerrychanf5/ai-video-skills-cjl.git"
TMP_DIR="$HOME/.ai-video-skills-tmp"
SKILL_NAMES=("ai-video-creative" "ai-video-prompt")

# 所有已知 AI 工具的 skills 路径
# Claude Code / Codex / Cursor / OpenClaw / Gemini / Baoyu / 通用 agents
SKILL_DIRS=(
  "$HOME/.claude/skills"
  "$HOME/.agents/skills"
  "$HOME/.codex/skills"
  "$HOME/.cursor/skills"
  "$HOME/.openclaw/skills"
  "$HOME/.gemini/skills"
  "$HOME/.baoyu-skills"
)

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║    AI 视频创作 Skill 套件 安装程序        ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# ── 1. 检查 git ──────────────────────────────
if ! command -v git &>/dev/null; then
  echo "❌ 未找到 git，请先安装 git 后重试。"
  exit 1
fi

# ── 2. 克隆/更新仓库 ─────────────────────────
if [ -d "$TMP_DIR/.git" ]; then
  echo "🔄 发现已有缓存，更新到最新版本..."
  git -C "$TMP_DIR" pull --quiet
else
  echo "📦 正在下载 Skill 套件..."
  git clone --quiet "$REPO" "$TMP_DIR"
fi
echo "✅ 下载完成"
echo ""

# ── 3. 检测已安装的工具 ──────────────────────
echo "🔍 检测已安装的 AI 工具..."
INSTALLED_DIRS=()
for dir in "${SKILL_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    echo "   ✓ 发现：$dir"
    INSTALLED_DIRS+=("$dir")
  fi
done

if [ ${#INSTALLED_DIRS[@]} -eq 0 ]; then
  echo ""
  echo "⚠️  未检测到已知 AI 工具目录，将安装到默认路径：$HOME/.claude/skills"
  mkdir -p "$HOME/.claude/skills"
  INSTALLED_DIRS=("$HOME/.claude/skills")
fi
echo ""

# ── 4. 安装到所有检测到的路径 ────────────────
echo "📥 开始安装 Skills..."
for base_dir in "${INSTALLED_DIRS[@]}"; do
  for skill in "${SKILL_NAMES[@]}"; do
    target="$base_dir/$skill"
    doc_dir="$target/产物"
    mkdir -p "$doc_dir"
    cp "$TMP_DIR/skills/$skill/SKILL.md" "$target/SKILL.md"
    cp "$TMP_DIR/docs/"*.md "$doc_dir/"
    echo "   ✅ $target"
  done
done

# ── 5. 知识文档保存到本地 ────────────────────
DOCS_DIR="$HOME/.ai-video-skills"
mkdir -p "$DOCS_DIR"
cp "$TMP_DIR/templates/"*.md "$DOCS_DIR/"
cp "$TMP_DIR/docs/"*.md "$DOCS_DIR/"

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║              安装完成 🎉                  ║"
echo "╚══════════════════════════════════════════╝"
echo ""
echo "📂 文档资料：$DOCS_DIR"
echo ""
echo "使用方法："
echo "  创意发散 → 在 AI 工具中说：「帮我做个视频创意构思」"
echo "  写提示词 → 说：「帮我写视频提示词」"
echo "  优化提示词 → 粘贴已有提示词，说「帮我优化」"
echo ""
echo "反馈需求 → https://github.com/jerrychanf5/ai-video-skills-cjl/issues"
echo ""
