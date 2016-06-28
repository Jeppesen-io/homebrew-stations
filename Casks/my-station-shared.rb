cask 'my-station-shared' do
  version '1.8'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-station-shared.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # Common brews
  depends_on formula: 'awscli'
  depends_on formula: 'curl'
  depends_on formula: 'ipcalc'
  depends_on formula: 'jq'
  depends_on formula: 'rtv'
  depends_on formula: 's3cmd'
  depends_on formula: 'watch'
  depends_on formula: 'wget'

  # Common casks
  depends_on cask: 'google-chrome'
  depends_on cask: 'google-drive'
  depends_on cask: 'slack'
  depends_on cask: 'spotify'
  depends_on cask: 'visual-studio-code'
  depends_on cask: 'yakyak'
  depends_on cask: 'goofy'

  # My formulas
  depends_on formula: 'jeppesen-io/macos/my-macos'

  # My casks
  depends_on cask:    'jeppesen-io/iterm/my-iterm'
  depends_on cask:    'jeppesen-io/git/my-git'
  depends_on cask:    'jeppesen-io/neovim/my-neovim'
  depends_on cask:    'jeppesen-io/bash/my-bash'
  depends_on cask:    'jeppesen-io/hammerspoon/my-hammerspoon'
  depends_on cask:    'jeppesen-io/docker/my-docker'

end
