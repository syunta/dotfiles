#!/bin/sh

repo=$1

ln -s "$repo/.gitconfig"        ~/.gitconfig
ln -s "$repo/.gitignore_global" ~/.gitignore_global
ln -s "$repo/.tmux.conf"        ~/.tmux.conf
ln -s "$repo/.vimrc"            ~/.vimrc
ln -s "$repo/.zprofile"         ~/.zprofile
ln -s "$repo/.zshrc"            ~/.zshrc
