# Language
export LANG=ja_JP.UTF-8

# PATH
export PATH="/usr/local/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# cmd [ls] color settings 
export LSCOLORS=cxfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# direnv
export EDITOR='vim'
eval "$(direnv hook zsh)"

export GPG_TTY=$(tty)
