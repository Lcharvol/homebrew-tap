cask "claude-god" do
  version "2.20.1"
  sha256 "472f67d1370396642b83c224a2220954fd44b9a82188a401e7e2fe6807b9f933"

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
