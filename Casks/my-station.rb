cask 'my-station' do

  version '2.0'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-station.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # My casks
  depends_on cask: 'jeppesen-io/iterm/my-iterm'
  depends_on cask: 'jeppesen-io/hammerspoon/my-hammerspoon'

  # Forced to use Casks because I want to write to $HOME
  depends_on cask: 'jeppesen-io/git/my-git'
  depends_on cask: 'jeppesen-io/macos/my-macos'
  depends_on cask: 'jeppesen-io/neovim/my-neovim'
  depends_on cask: 'jeppesen-io/zsh/my-zsh'

  # Common casks
  depends_on cask: 'google-chrome'
  depends_on cask: 'google-drive'
  depends_on cask: 'rambox'
  depends_on cask: 'spotify'

  # Common brews
  depends_on formula: 'awscli'
  depends_on formula: 'curl'
  depends_on formula: 'ipcalc'
  depends_on formula: 'jq'
  depends_on formula: 'nmap'
  depends_on formula: 'rbenv'
  depends_on formula: 'ruby-build'
  depends_on formula: 'rtv'
  depends_on formula: 'ripgrep'
  depends_on formula: 'watch'

  # OSX tools suck!
  depends_on formula: 'coreutils'
  depends_on formula: 'gawk'
  depends_on formula: 'findutils'  => 'with-default-names'
  depends_on formula: 'gnu-sed'    => 'with-default-names'
  depends_on formula: 'grep'       => 'with-default-names'

end
