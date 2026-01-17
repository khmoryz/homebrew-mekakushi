# Homebrew Tap for Mekakushi

このリポジトリは[Mekakushi](https://github.com/khmoryz/mekakushi)のHomebrew Tapです。

## インストール

```bash
brew tap khmoryz/homebrew-mekakushi
brew install --cask mekakushi
```

## アップデート

```bash
brew upgrade mekakushi
```

## アンインストール

```bash
brew uninstall --cask mekakushi
brew untap khmoryz/homebrew-mekakushi
```

## 特徴

- ✅ Gatekeeperの警告を自動回避
- ✅ ワンコマンドでインストール完了
- ✅ 簡単なアップデート管理

## リポジトリ構造

```
homebrew-mekakushi/
└── Casks/
    └── mekakushi.rb
```

## メンテナンス

新しいバージョンをリリースする際は、`Casks/mekakushi.rb`を更新してください：

1. `version`を更新
2. `sha256`を更新（新しいzipファイルのハッシュ）
3. コミット＆プッシュ

### SHA256の計算方法

```bash
curl -sL https://github.com/khmoryz/mekakushi/releases/download/vX.X.X/Mekakushi-darwin-arm64-X.X.X.zip | shasum -a 256
```

## ライセンス

MIT License
