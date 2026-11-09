#!/usr/bin/env bash
# 指定したスキルを、プロジェクトの .bob/skills/ に導入する。
# 使い方: install.sh <skill-name> [<project-dir>] [<agent-dir>]
#   project-dir: 導入先プロジェクト（既定: カレントディレクトリ）
#   agent-dir  : エージェントのスキル置き場（既定: .bob/skills）
set -euo pipefail

REPO="kimamura2001/skills"
REF="${SKILLS_REF:-main}"

skill="${1:-}"
project="${2:-$PWD}"
agent_dir="${3:-.bob/skills}"

if [[ -z "$skill" ]]; then
  echo "使い方: $0 <skill-name> [<project-dir>] [<agent-dir>]" >&2
  exit 1
fi

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

curl -fsSL "https://codeload.github.com/${REPO}/tar.gz/${REF}" | tar -xz -C "$tmp" --strip-components=1

src="$tmp/skills/$skill"
if [[ ! -f "$src/SKILL.md" ]]; then
  echo "スキルが見つかりません: $skill" >&2
  echo "利用できるスキル:" >&2
  ls "$tmp/skills" >&2
  exit 1
fi

dest="$project/$agent_dir/$skill"
mkdir -p "$dest"
cp -R "$src/." "$dest/"
echo "導入しました: $dest"
