# alias
## regular commands
alias ls='ls -aG -F'
alias rm='rm -i'

## git
alias gis='git status'
alias gif='git diff'

## nvim
alias vi='nvim'
alias vim='nvim'

## configuration
alias vimconf='vi ~/ghq/github.com/cat2koban/dotfiles/nvim/init.vim'
alias fishconf='vi ~/ghq/github.com/cat2koban/dotfiles/fish/config.fish'

## dotfiles
alias dot='cd ~/ghq/github.com/cat2koban/dotfiles/'

## ghq
alias get='ghq get -p'

## others
alias reload='exec $SHELL'

# for Development rails app
alias be='bundle exec'
alias bers='be rspec'
alias berc='be rubocop'
alias berca='be rubocop -a'

# fish-ghq / fzf 
set -g GHQ_SELECTOR_OPTS "--no-sort --reverse --ansi --color bg+:13,hl:3,pointer:7"

# direnv
eval (direnv hook fish)

# editor
set -x EDITOR nvim

# GPG Key
set -x GPG_TTY (tty)
