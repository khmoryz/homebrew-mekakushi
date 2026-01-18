cask "mekakushi" do
  version "0.1.7"
  sha256 "f4fdb5b6236efbb58ae76231b965b299b7edb500707de8d3f45659a316f84adf"

  url "https://github.com/khmoryz/mekakushi/releases/download/v#{version}/Mekakushi-#{version}-arm64-mac.zip"
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
