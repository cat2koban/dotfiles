# alias
alias ls='ls -aG -F'
alias rm='rm -i'
alias gis='git status'
alias vi='nvim'
alias vim='nvim'
alias vimconf='vi ~/.config/nvim/init.vim'
alias fishconf='vi ~/.config/fish/config.fish'
alias reload='exec $SHELL'
alias dot='cd ~/ghq/github.com/cat2koban/dotfiles/'

# fish-ghq / fzf 
set -g GHQ_SELECTOR_OPTS "--no-sort --reverse --ansi --color bg+:13,hl:3,pointer:7"

# GPG Key
set -x GPG_TTY (tty)
