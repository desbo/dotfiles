#!/usr/bin/env bash

ZSH_DIR="$HOME/.zsh"

if ! hash brew 2>/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! test -d $ZSH_DIR; then
	mkdir -p $ZSH_DIR
fi

if ! test -d $ZSH_DIR/pure; then
	git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

brew -v update
brew -v upgrade 

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

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

cd $HOME && git --git-dir ~/.dotfiles/.git --work-tree=$HOME reset --hard
