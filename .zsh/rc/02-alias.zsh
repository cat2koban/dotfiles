## regular commands
alias ls='ls -aG -F'
alias rm='rm -i'
alias ..='cd ..'
alias cat='bat'
alias bar='bat README.md'
alias ide='sh ~/bin/ide.sh'
alias exap='sh ~/bin/exap.sh'
alias setup='~/bin/setup'
alias check='~/bin/check'

## git
alias g='git'
alias gis='git status'
alias gif='git diff'
alias gil='git log --oneline'
alias gitch='git switch'
alias todaycommits='git today | pbcopy'

## nvim
alias vi='nvim'
alias vim='nvim'

## configuration
alias vimconf='vi ~/ghq/github.com/cat2koban/dotfiles/.vim/vimrc'

## dotfiles
alias dot='cd ~/ghq/github.com/cat2koban/dotfiles/'

## ghq
alias get='ghq get -p'

## others
alias reload='exec $SHELL'

## tmux
alias t='tmux'

# for Development rails app
alias be='bundle exec'
alias bers='be rspec'
alias berc='be rubocop'
alias berca='be rubocop -a'

# z
alias j="z"
