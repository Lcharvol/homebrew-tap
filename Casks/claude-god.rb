cask "claude-god" do
  version "2.17.1"
  sha256 "242ff627f6dff8f461e60e70b2a5bf9d5fc94aeb158df23ea8e62636fda041c4"

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
