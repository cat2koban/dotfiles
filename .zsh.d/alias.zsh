alias rm='rm -i'
alias ls='ls -aG -F'
alias vi='/usr/local/bin/nvim'
alias vim='/usr/local/bin/nvim'

# cd
alias dot='cd $HOME/workspace/dotfiles'

# git
alias gis='git status'
alias gic='git commit'
alias gif='git diff'
alias gilo='git log --oneline'
alias gilog='git log --oneline --graph'

# ghq | peco | hub 
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
