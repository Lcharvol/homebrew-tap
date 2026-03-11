cask "claude-god" do
  version "2.7.0"
  sha256 :no_check

  url "https://github.com/Lcharvol/Claude-God/releases/download/v#{version}/ClaudeGod.dmg"
  name "Claude God"
  desc "Monitor your Claude AI usage from the macOS menu bar"
  homepage "https://github.com/Lcharvol/Claude-God"

  depends_on macos: ">= :ventura"

  app "Claude God.app"

  zap trash: [
    "~/Library/Preferences/com.lcharvol.claude-god.plist",
  ]
end
