cask "mekakushi" do
  version "0.1.5"
  sha256 "0f35db1bb0d4e899bd0812cf0af8997bcd2da43fc1702ec0157d334220fc1e97"

  url "https://github.com/khmoryz/mekakushi/releases/download/v#{version}/Mekakushi-0.1.0-arm64-mac.zip"
  name "Mekakushi"
  desc "Screen recording tool with privacy protection for sensitive information"
  homepage "https://github.com/khmoryz/mekakushi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mekakushi.app"

  # Gatekeeperの警告を自動削除
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Mekakushi.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/mekakushi",
    "~/Library/Preferences/com.mekakushi.plist",
    "~/Library/Saved Application State/com.mekakushi.savedState",
  ]
end
