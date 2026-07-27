cask 'claude-god' do
  version '2.24.2'
  sha256 '57c4e794fb1da6443d62f3b1edc2333b2d3bc0a90369d57670c18c248284b406'

  url "https://github.com/Lcharvol/Claude-God/releases/download/v#{version}/ClaudeGod.dmg"
  name 'Claude God'
  desc 'Monitor your Claude AI usage from the macOS menu bar'
  homepage 'https://github.com/Lcharvol/Claude-God'

  depends_on macos: :ventura

  app 'Claude God.app'

  postflight do
    system_command '/usr/bin/xattr',
                   args: ['-cr', "#{appdir}/Claude God.app"],
                   sudo: false
  end

  zap trash: [
    '~/Library/Preferences/com.lcharvol.claude-god.plist'
  ]
end
