# kimamura2001's Skills

AI エージェント（IBM Bob など）向けのスキル集です。スキルはグローバルには登録せず、**プロジェクトごと**に `.bob/skills/` へ導入して使います。

## 利用できるスキル

| スキル | 内容 |
| --- | --- |
| `git-commit` | 変更内容から Conventional Commit を作成する |
| `github-pr` | Git の履歴から Pull Request のタイトル・本文を作り、`gh pr create` で PR を作成する |
| `it-trends` | 国内外の主要ソースから日次ITトレンドを収集・要約する |
| `meeting-minutes` | Meetily の文字起こしから構造化した議事録を作成する |
| `weekly-note` | Obsidian 保管庫の週次ノートを作成する |
| `solution-architect` | 業務要件から、業務概要・技術アーキテクチャ・実装計画の3文書を作成する |
| `sop-builder` | ワークフロー図・Langflow/n8n JSON・BPMN などから SOP（標準作業手順書）を作成する |
| `wxo-analyzer` | watsonx Orchestrate プロジェクトを解析し、全体・エージェント・ツール等の3種類のレポートを生成する |
| `wxo-builder` | SOP や簡単なプロンプトから watsonx Orchestrate のエージェント・フロー・ツール・ナレッジベースを実装する |
| `skill-template` | 新しいスキルを作るときの雛形 |

## クレジット

`git-commit`、`github-pr`、`it-trends`、`meeting-minutes`、`weekly-note` は [nonmot/skills](https://github.com/nonmot/skills) から取り込んだものです。

## 導入（プロジェクトごと）

導入したいプロジェクトのルートで、`<skill-name>` を上の表の名前に置き換えて実行します。`.bob/skills/<skill-name>/` に配置されます。

```bash
curl -fsSL https://raw.githubusercontent.com/kimamura2001/skills/main/scripts/install.sh | bash -s -- <skill-name>
```

別のディレクトリのプロジェクトに導入する場合は、第 2 引数で指定します。

```bash
curl -fsSL https://raw.githubusercontent.com/kimamura2001/skills/main/scripts/install.sh | bash -s -- <skill-name> /path/to/project
```

Bob 以外のエージェントに導入する場合は、第 3 引数でスキル置き場を指定します（例: `.claude/skills`）。

```bash
... | bash -s -- <skill-name> . .claude/skills
```

ローカルに clone している場合は、スキルのフォルダを直接コピーしても同じです。

```bash
cp -R skills/<skill-name> /path/to/project/.bob/skills/
```

## GitHub CLI の Agent Skills 機能を使う場合

`gh skills` が使える新しいバージョンの GitHub CLI では、次でも導入できます。

```bash
gh skills install kimamura2001/skills <skill-name>
```

## 更新

導入済みのスキルを最新にするには、同じ導入コマンドを再実行します（上書きされます）。

## スキルを追加する

[AGENTS.md](AGENTS.md) を参照してください。
