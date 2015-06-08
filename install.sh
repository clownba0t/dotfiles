#!/bin/bash
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
fi
if [ ! -d ~/.vim/pathogen/vim-pathogen ]; then
  git clone https://github.com/tpope/vim-pathogen.git ~/.vim/pathogen/vim-pathogen
fi
cp vimrc ~/.vimrc
vim -c "PluginInstall"
