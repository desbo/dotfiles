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
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

brew install nvim
brew install ripgrep
brew install exa
brew install fd
brew install bat
brew install zoxide

brew install fzf
$(brew --prefix)/opt/fzf/install

brew install tmux
brew install reattach-to-user-namespace

brew install gpg2 pinentry-mac

brew install --cask alacritty

brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

cd $HOME && git --git-dir ~/.dotfiles/.git --work-tree=$HOME reset --hard

mkdir ~/journal
mkdir ~/code
