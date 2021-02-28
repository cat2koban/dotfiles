HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

bindkey -e

autoload -Uz colors; colors
autoload -U compinit; compinit

setopt nobeep
setopt hist_ignore_dups

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
