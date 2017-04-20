class MyBase < Formula
  desc 'Install all my Formulas'
  url 'https://github.com/Jeppesen-io/homebrew-stations/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-stations'
  version '1.7'

  bottle :unneeded

  # Common brews
  depends_on 'awscli'
  depends_on 'curl'
  depends_on 'ipcalc'
  depends_on 'jq'
  depends_on 'nmap'
  depends_on 'rbenv'
  depends_on 'ruby-build'
  depends_on 'rtv'
  depends_on 'ripgrep'
  depends_on 'todo-txt'
  depends_on 'watch'
  depends_on 'wget'

  # OSX tools suck!
  depends_on 'coreutils'
  depends_on 'gawk'
  depends_on 'findutils'  => 'with-default-names'
  depends_on 'gnu-sed'    => 'with-default-names'
  depends_on 'grep'       => 'with-default-names'

  # My formulas
  depends_on 'jeppesen-io/git/my-git'
  depends_on 'jeppesen-io/macos/my-macos'
  depends_on 'jeppesen-io/neovim/my-neovim'
  depends_on 'jeppesen-io/zsh/my-zsh'

  def install
    # Prevent "empty install"
    system 'touch'    , "#{prefix}/config"
  end

end
