cask 'home' do
  version '0.1'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/home.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  # Work casks
  depends_on cask: 'steam'
  depends_on cask: 'jeppesen-io/stations/shared'

  postflight do
    `git config --global user.name "Nelson Jeppesen"`
    `git config --global user.email nelson.jeppesen@gmail.com`
  end

end
