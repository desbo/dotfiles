# installation
1. clone into ~/.dotfiles
2. ./setup.sh

note this uses a [detached working
directory](https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/).
The setup script aliases `dgit` to `git --git-dir ~/.dotfiles/.git
--work-tree=$HOME` before
running `dgit reset --hard` from the home directory. This means the repo is
stored in `.dotfiles`, but after the reset, git moves its files to the root of 
the home directory. 

Add new files to `~/.dotfiles` and use `dgit` for any git commands. 
