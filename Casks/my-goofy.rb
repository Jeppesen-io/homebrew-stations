cask 'my-goofy' do
  version '1.1'
  url 'https://raw.githubusercontent.com/Jeppesen-io/homebrew-stations/master/Casks/my-goofy.rb'
  sha256 :no_check
  container type: :naked
  stage_only true

  depends_on cask: 'goofy'

  postflight do

    # Enable spellcheck
    `defaults write cc.buechele.Goofy WebContinuousSpellCheckingEnabled -bool true`

    # Disable auto-correct
    `defaults write cc.buechele.Goofy WebContinuousSpellCheckingEnabled -bool false`

    # Add status bar
    `defaults write cc.buechele.Goofy showStatusItem -bool true`
  end

end
