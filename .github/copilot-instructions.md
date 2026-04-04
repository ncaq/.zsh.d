# 出力設定

## 言語

AIは人間に話すときは日本語を使ってください。

しかし既存のコードのコメントなどが日本語ではない場合は、
コメント等は既存の言語に合わせてください。

## 記号

ASCIIに対応する全角形(Fullwidth Forms)は使用禁止。

具体的には以下のような文字:

- 全角括弧 `（）` → 半角 `()`
- 全角コロン `：` → 半角 `:`
- 全角カンマ `，` → 半角 `,`
- 全角数字 `０-９` → 半角 `0-9`

# シェルスクリプト

## コーディング規約

- シェルスクリプトではBashではなくZshを一貫して使用します
- Zshの構文・機能を積極的に活用してください

# プロジェクト概要

このリポジトリはZshの設定ファイル群です。
`~/.zsh.d`に`git clone`して使います。

## ディレクトリ構成

- `profile/`: Zshの設定ファイル群(`.zsh`拡張子)
- `autoload/`: Zshのautoload関数
- `bin/`: シェルスクリプト群
- `share/`: 共有リソース
- `.zshrc`: エントリーポイント

# リポジトリ構成

Codex向けの`AGENTS.md`とClaude Code向けの`CLAUDE.md`は以下のように`.github/copilot-instructions.md`のシンボリックリンクになっています。

```console
AGENTS.md -> .github/copilot-instructions.md
CLAUDE.md -> .github/copilot-instructions.md
```

これにより各種LLM向けのドキュメントを一元管理しています。
