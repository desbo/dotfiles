#!/usr/bin/env bash

if ! hash brew 2>/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

brew update
brew upgrade 

brew install zsh
brew install nvim
brew install ripgrep
brew install exa
brew install fd

brew install tmux
brew install reattach-to-user-namespace

brew install gpg2 pinentry-mac

brew cask install alacritty

brew tap homebrew/cask-fonts
brew cask install font-input
