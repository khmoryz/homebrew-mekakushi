# homebrew-mekakushi リポジトリセットアップ

## クイックスタート

### 1. GitHubで新しいリポジトリを作成

- リポジトリ名: `homebrew-mekakushi`
- 公開設定: Public
- 初期化オプション: すべてチェックなし

### 2. このディレクトリの内容をプッシュ

```bash
cd homebrew-repo

# Gitリポジトリを初期化
git init

# ファイルを追加
git add .

# 初回コミット
git commit -m "feat: mekakushi caskを追加

Gatekeeperの警告を自動削除するpostflightスクリプトを含む
Homebrew Caskを追加。"

# リモートリポジトリを追加
git remote add origin https://github.com/khmoryz/homebrew-mekakushi.git

# プッシュ
git branch -M main
git push -u origin main
```

### 3. テスト

```bash
brew tap khmoryz/homebrew-mekakushi
brew install --cask mekakushi
```

## 完了！

これで、ユーザーは以下のコマンドでインストールできます：

```bash
brew tap khmoryz/homebrew-mekakushi
brew install --cask mekakushi
```
