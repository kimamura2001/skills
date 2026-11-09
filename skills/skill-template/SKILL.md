---
name: skill-template
description: Use when the user asks to create a new skill in this repository or wants a starting template for a SKILL.md.
license: MIT
---

# Skill Template

新しいスキルを作るときの雛形です。コピーして中身を書き換えて使います。

1. `skills/<skill-name>/` を作り、この `SKILL.md` をコピーする。
2. frontmatter の `name` をフォルダ名と一致させる（英小文字・数字・ハイフンのみ）。
3. `description` に、どんな依頼のときに発動するかを具体的に書く。
4. 本文には、エージェントの判断を改善するタスク固有の手順・制約・参照先だけを書く。
5. スクリプトや参照資料が必要な場合のみ `scripts/`、`references/`、`assets/` を追加する。
