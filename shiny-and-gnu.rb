require "formula"

class ShinyAndGnu < Formula
  homepage "https://github.com/al-the-x/homebrew-mine/"
  url homepage, :using => :git
  sha1 ""

  version 'master'

  head homepage

  # GNU utils make MacOSX feel less like BSD...
  depends_on 'coreutils'
  # depends_on 'binutils'
  depends_on 'diffutils'
  depends_on 'findutils' => '--default-names'
  depends_on 'gawk'
  depends_on 'gnu-indent' => '--default-names'
  depends_on 'gnu-sed' => '--default-names'
  depends_on 'gnu-tar' => '--default-names'
  depends_on 'gnu-which' => '--default-names'
  depends_on 'grep' => '--default-names'
  depends_on 'gzip'
  depends_on 'watch'
  depends_on 'wdiff' => '--with-gettext'
  depends_on 'wget'

  # Thanks for the antiques, MacOSX...
  depends_on 'bash'
  depends_on 'gpatch'
  depends_on 'git'
  depends_on 'less'
  depends_on 'openssh' => '--with-brewed-openssl'
  depends_on 'python' => '--with-brewed-openssl'
  depends_on 'rsync'
  depends_on 'vim' => '--override-system-vi'
  depends_on 'zsh'

  # It's complicated...
  option 'with-gdb', 'If you want to replace `gdb`, see `brew info gdb`'
  depends_on 'gdb' if build.with? 'gdb' ## It's complicated...

  # May cause linking errors. Use with caution!
  option 'with-m4', 'Known to cause problems, see `brew info m4`'
  depends_on 'm4' if build.with? 'm4'

  option 'with-make', 'Known to cause problems, see `brew info make`'
  depends_on 'make' if build.with? 'make'

  option 'with-unzip', 'Known to cause problems, see `brew info unzip`'
  depends_on 'unzip'

  def install
    opoo 'Enjoy your GNU environment!'
  end

  test do ## TODO!
  end
end
