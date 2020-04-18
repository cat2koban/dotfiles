#!/usr/bin/env sh

DIR=`pwd`

ln -vfs $DIR/nvim/init.vim $HOME/.config/nvim/init.vim
ln -vfs $DIR/fish/config.fish $HOME/.config/fish/config.fish
ln -vfs $DIR/git/.gitconfig $HOME/.gitconfig

exec $SHELL
