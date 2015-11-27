#!/bin/bash

# Vim config
if [ ! -e ~/.vimrc ]; then
  cp vimrc ~/.vimrc
else
  echo "WARNING: ~/.vimrc already exists - skipping"
fi

# Global gitignore
if [ ! -e ~/.gitignore_global ]; then
  cp gitignore_global ~/.gitignore_global
  git config --global core.excludesfile ~/.gitignore_global
else
  echo "WARNING: ~/.gitignore_global already exists - skipping"
fi

# Bootstrap Vim plugin installers
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
fi
if [ ! -d ~/.vim/pathogen/vim-pathogen ]; then
  git clone https://github.com/tpope/vim-pathogen.git ~/.vim/pathogen/vim-pathogen
fi

# Install Vim plugins
vim -c "PluginInstall"
