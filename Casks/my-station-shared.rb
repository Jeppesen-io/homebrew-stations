cask 'my-station-shared' do
  version '1.6'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-station-shared.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # Common casks
  depends_on cask: 'google-chrome'
  depends_on cask: 'google-drive'
  depends_on cask: 'rambox'
  depends_on cask: 'spotify'
  depends_on cask: 'visual-studio-code'

  # My casks
  depends_on cask:    'jeppesen-io/iterm/my-iterm'
  depends_on cask:    'jeppesen-io/hammerspoon/my-hammerspoon'

  # All non-cask homebrews
  depends_on formula: 'jeppesen-io/stations/my-base'
end
