cask 'claude-god' do
  version '2.26.0'
  sha256 '2e633dbd840eac7b8fdf8138e4dbd27ea17bbc30bfc7715c9317b6dafab05186'

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
