#!/bin/sh

repo=$1

ln -s "$repo/.gitconfig"        ~/.gitconfig
ln -s "$repo/.gitignore_global" ~/.gitignore_global
ln -s "$repo/.tmux.conf"        ~/.tmux.conf
ln -s "$repo/.vimrc"            ~/.vimrc
ln -s "$repo/.zprofile"         ~/.zprofile
ln -s "$repo/.zshrc"            ~/.zshrc
ln -s "$repo/.ghci"             ~/.ghci

if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
fi
ln -s "$repo/init.vim" ~/.config/nvim/init.vim
