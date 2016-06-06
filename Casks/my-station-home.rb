cask 'my-station-home' do
  version '1.0'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-station-home.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # Work casks
  depends_on cask: 'steam'
  depends_on cask: 'jeppesen-io/stations/my-station-shared'

end
