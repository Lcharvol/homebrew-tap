cask "claude-god" do
  version "2.17.0"
  sha256 "a2658d519f2f7be5580735c2baa89b0f88d296621588e442066e80cfeccaadad"

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
