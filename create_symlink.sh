#!/bin/sh

repo=$1

rm ~/.gitconfig
ln -s "$repo/.gitconfig" ~/.gitconfig
rm ~/.gitignore_global
ln -s "$repo/.gitignore_global" ~/.gitignore_global
rm ~/.tmux.conf
ln -s "$repo/.tmux.conf" ~/.tmux.conf
rm ~/.vimrc
ln -s "$repo/.vimrc" ~/.vimrc
rm ~/.zprofile
ln -s "$repo/.zprofile" ~/.zprofile
rm ~/.zshrc
ln -s "$repo/.zshrc" ~/.zshrc
rm ~/.ghci
ln -s "$repo/.ghci" ~/.ghci
rm ~/.ghci
ln -s "$repo/.gnupg" ~/.gnupg

ln -s $(which gsed) /usr/local/bin/sed

if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
fi
rm ~/.config/nvim/init.vim
ln -s "$repo/init.vim" ~/.config/nvim/init.vim
