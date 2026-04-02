cask "claude-god" do
  version "2.20.0"
  sha256 "76ec76957b7d3a386b1a11a6d5de13a57240a704c2fc6fa9f3ee2bc71051fe65"

  url "https://github.com/Lcharvol/Claude-God/releases/download/v#{version}/ClaudeGod.dmg"
  name "Claude God"
  desc "Monitor your Claude AI usage from the macOS menu bar"
  homepage "https://github.com/Lcharvol/Claude-God"

  depends_on macos: ">= :ventura"

  app "Claude God.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Claude God.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.lcharvol.claude-god.plist",
  ]
end
