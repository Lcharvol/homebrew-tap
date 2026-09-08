cask 'claude-god' do
  version '2.25.5'
  sha256 '6bbd7cb092876a3b0ceb62728bce7868495ac04db62f716dc449ec89ab32e8e3'

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
