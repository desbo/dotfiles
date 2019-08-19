autoload -U promptinit; promptinit
prompt pure
fpath+=${ZDOTDIR:-~}/.zsh_functions

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux new-session -A -s main
fi
