
# リポジトリ運用

## 方針

- スキルはグローバル（`~/.bob/skills/`）には入れず、プロジェクトごとに `.bob/skills/` へ導入する。
- 公開リポジトリのため、IBM・お客様の情報、社内資料、認証情報は一切含めない。汎用的なスキルだけを置く。

## 構成

- 配布するスキルはそれぞれ `skills/<skill-name>/` に置く。
- すべてのスキルに `SKILL.md` を置き、frontmatter に `name` と発動条件を区別できる `description` を必ず書く。
- スキル名は英小文字・数字・ハイフンのみを使う。フォルダ名と frontmatter の `name` は一致させる。
- `scripts/`、`references/`、`assets/` は、そのスキルの動作を直接支える場合だけ追加する。

## スキルを追加する

1. `skills/<skill-name>/SKILL.md` を作成する（`skills/skill-template/` をコピーすると早い）。
2. エージェントの判断を改善する、タスク固有の指示・制約・参照先だけを書く。
3. 配布ライセンスを決め、スキルの frontmatter に `license` として記載する。
4. README の「利用できるスキル」表に追記する。
5. push する。
