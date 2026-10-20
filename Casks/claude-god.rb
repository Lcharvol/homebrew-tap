cask 'claude-god' do
  version '2.27.0'
  sha256 '34568086fe6191bc2727f085efdeb456ce0fbaf0aced92afb9f9c539ee56a87d'

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
