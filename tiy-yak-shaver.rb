require 'formula'

class TiyYakShaver < Formula
  homepage 'https://github.com/al-the-x/homebrew-mine'
  head homepage + '.git'
  
  depends_on 'zsh'
  
  depends_on 'git'
  depends_on 'hub'
  
  depends_on 'nvm' => :recommended
  
  option 'without-ruby', 'Do not include non-system ruby manager'
  unless build.without? 'ruby'
    ## Ruby options...
    depends_on 'chruby' => :recommended unless build.with? 'rbenv', 'rvm'
    depends_on 'ruby-install' => :recommended unless build.with? 'rbenv'
    
    option 'with-rvm', 'Install `rvm` to manage non-system rubies'
    depends_on 'rvm' if build.with? 'rvm'
    
    option 'with-rbenv', 'Install `rbenv` to manage non-system rubies'
    depends_on 'rebenv' if build.with? 'rbenv'
    depends_on 'ruby-build' if build.with? 'rbenv'
  end
  
  def install
    ## TODO: hub clone soren-ionescu/prezto $HOME/.zprezto
      ## FIXME: Write prezto formula instead...
    ## TODO: pushd .zprezto && hub fork
    ## TODO: echo '0.10' >> $HOME/.nvmrc
    ## TODO: echo '2.x.x' >> .ruby-version
  end
end
