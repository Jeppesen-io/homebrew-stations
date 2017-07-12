cask 'my-station-work' do
  version '1.5'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-station-work.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # Only packages I use on my work
  depends_on cask: 'keepassx'
  depends_on cask: 'vagrant'

  # Can use a different browser for personal work
  depends_on cask: 'caskroom/versions/google-chrome-canary'

  # Stuff I use all on computers
  depends_on cask: 'jeppesen-io/stations/my-station-shared'

  depends_on formula: 'python'

  postflight do

    `pip install rackspace-novaclient`

  end

end
