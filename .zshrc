fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=("$HOME/.zsh/pure")

autoload -U promptinit; promptinit
prompt pure

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux new-session -A -s main
fi

alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'

alias vim='nvim'
alias vi='nvim'

alias ls='exa'
alias ll='exa -l'
alias lll='exa -l | less'
alias lla='exa -la'
alias llt='exa -T'
alias llfu='exa -bghHliS --git'

export GPG_TTY=$(tty)
