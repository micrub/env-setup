#!/bin/bash -x

# vundle and vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
cp $HOME/.vimrc $HOME/.vimrc.origin
cp .vimrc $HOME/.vimrc
vim +PluginInstall +qall
