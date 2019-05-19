# 日本語を使用
export LANG=ja_JP.UTF-8

# PATHの設定(homebrew+virtualwrapper)
export PATH=/opt/homebrew/bin:/sbin:/bin:/usr/bin:/usr/texbin:$PATH
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
PATH=~/.plenv/shims:$PATH
#export PATH="/usr/local/bin:$PATH"
export PERL_CPANM_OPT="--local-lib=~/perl5"
export PATH=$HOME/perl5/bin:$PATH;
export PERL5LIB=$HOME/perl5/lib/perl5:$PERL5LIB;
export Path="/usr/local/Celler/tmux/2.3_3/bin"
export PATH=$PATH:$HOME/bin
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init -)"
export CLASSPATH=.:/usr/share/java/mysql-connector-java-8.0.11.jar
export PATH="/usr/local/opt/node@10/bin:$PATH"

# goenv の環境設定
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# cmd [ls] の色設定
export LSCOLORS=cxfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

