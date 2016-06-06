cask 'my-station-work' do
  version '1.0'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-station-work.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # Only packages I use on my work
  depends_on formula: 'rbenv'
  depends_on cask: 'keepassx'
  depends_on cask: 'vagrant'
  depends_on cask: 'google-chrome-canary'

  # Stuff I use all on computers
  depends_on cask: 'jeppesen-io/stations/my-station-shared'

end
