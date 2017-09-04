cask 'my-station-home' do
  version '1.1'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-station-home.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # Home casks
  depends_on cask: 'jeppesen-io/stations/my-station-shared'

end
