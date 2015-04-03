" Filetype detection + syntax highlighting
filetype plugin indent on
syntax on


" Multiple buffers
set hidden


" Use UTF8 by default
set enc=utf-8
set fileencoding=utf-8
scriptencoding utf-8


" Stop the annoying bell
set visualbell t_vb=
set novisualbell


" Sane backspaces
set backspace=indent,eol,start


" Line numbers
set number


" Search highlighting
set hlsearch


" Flag lines > 80 characters
:set colorcolumn=80


" Block (brackets, etc.) highlighting
set showmatch


" Indent automagically
set autoindent

" Handle tabs
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2


" Font stuff for gvim (should probably be in gvimrc)
set guifont=Menlo\ Regular:h20


" Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Lokaltog/powerline', { 'rtp':'/powerline/bindings/vim' }
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-sensible'
Plugin 'bronson/vim-trailing-whitespace'

" initialise plugins
execute pathogen#infect()

call vundle#end()            " required
filetype plugin indent on    " required
