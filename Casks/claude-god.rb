cask 'claude-god' do
  version '2.25.6'
  sha256 '5b1a1053bc5843266f0dbe9e9225fad0687aefe335d94b764020f043667617d8'

  url "https://github.com/Lcharvol/Claude-God/releases/download/v#{version}/ClaudeGod.dmg"
  name 'Claude God'
  desc 'Monitor your Claude AI usage from the macOS menu bar'
  homepage 'https://github.com/Lcharvol/Claude-God'

  depends_on macos: :ventura

  app 'Claude God.app'

  postflight_steps do
    run '/usr/bin/xattr', args: ['-cr', '{{appdir}}/Claude God.app']
  end

  zap trash: [
    '~/Library/Preferences/com.lcharvol.claude-god.plist'
  ]
end
