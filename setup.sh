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

# todo: install iTerm2, setup git, PHPStorm settings, install docker for mac, download and install sublime text
