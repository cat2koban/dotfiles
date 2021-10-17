# brew
export PATH=/opt/homebrew/bin:$PATH

# go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export GOBIN="$GOPATH/bin"

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Node
eval "$(nodenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"

# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Ruby
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"
