#!/usr/bin/env sh

DIR=`pwd`

# xargs brew install < $DIR/brew_list

ln -vfs $DIR/nvim/init.vim $HOME/.config/nvim/init.vim
ln -vfs $DIR/fish/config.fish $HOME/.config/fish/config.fish
# TODO: fish を卒業したい
#ln -vfs $DIR/zsh/.zshrc $HOME/.zshrc
#ln -vfs $DIR/zsh/rc $HOME/

ln -vfs $DIR/git/.gitconfig $HOME/.gitconfig
ln -vfs $DIR/tmux/.tmux.conf $HOME/.tmux.conf

exec $SHELL
