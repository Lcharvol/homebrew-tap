cask 'claude-god' do
  version '2.25.1'
  sha256 '5e305b6131fcc9ae8d55567b08f11892fb1ba8e8f17bfdfb996ff79dba92c48b'

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
