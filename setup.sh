#!/bin/bash

set -x 

PWD=`pwd`

ln -s $PWD/.bash_profile ~/
ln -s $PWD/.bash_alias ~/
ln -s $PWD/.zshrc ~/


# install homebrew
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install zsh
brew install zsh

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install powerlevel10k theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

## install pwoer line fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# @todo iTerm2 users need to set both the Regular font and the Non-ASCII Font in "iTerm > Preferences > Profiles > Text" to use a patched font (per this issue).
# install iterm2
brew cask install iterm2

# todo: setup git, PHPStorm settings, install docker for mac, download and install sublime text
