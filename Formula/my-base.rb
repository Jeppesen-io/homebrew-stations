class MyBase < Formula
  desc 'Install all my Formulas'
  url 'https://github.com/Jeppesen-io/homebrew-stations/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-stations'
  version '1.0'

  bottle :unneeded

  # Common brews
  depends_on 'awscli'
  depends_on 'curl'
  depends_on 'ipcalc'
  depends_on 'jq'
  depends_on 'rbenv'
  depends_on 'ruby-build'
  depends_on 'rtv'
  depends_on 'ripgrep'
  depends_on 'watch'
  depends_on 'wget'

  # My formulas
  depends_on formula: 'jeppesen-io/macos/my-macos'
  depends_on formula: 'jeppesen-io/git/my-git'
  depends_on formula: 'jeppesen-io/neovim/my-neovim'
  depends_on formula: 'jeppesen-io/zsh/my-zsh'

  def install
    # Prevent "empty install"
    system 'touch'    , "#{prefix}/config"
  end

end
