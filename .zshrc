fpath+=("$HOME/.zsh/pure")

autoload -U promptinit; promptinit
prompt pure

autoload -U compinit; compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

unsetopt nomatch

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux new-session -A -s main
fi

[[ $TMUX != "" ]] && export TERM="screen-256color"

alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'

alias vim='nvim'
alias vi='nvim'

alias ls='exa'
alias ll='exa -l'
alias lll='exa -l | less'
alias lla='exa -la'
alias llt='exa -T'
alias llfu='exa -bghHliS --git'

alias journal='vi ~/journal/$(date '+%Y-%m-%d').md'

alias clean-local-git-branches='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'

alias python=python3

export GPG_TTY=$(tty)

setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

export EXA_COLORS="uu=38;5;249:un=38;5;241:gu=38;5;245:gn=38;5;241:da=38;5;245:sn=38;5;7:sb=38;5;7:ur=38;5;3;1:uw=38;5;5;1:ux=38;5;1;1:ue=38;5;1;1:gr=38;5;249:gw=38;5;249:gx=38;5;249:tr=38;5;249:tw=38;5;249:tx=38;5;249:fi=38;5;248:di=38;5;253:ex=38;5;1:xa=38;5;12:*.png=38;5;4:*.jpg=38;5;4:*.gif=38;5;4"
