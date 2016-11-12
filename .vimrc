set nocompatible
filetype off



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'Valloric/YouCompleteMe'

syntax enable
set encoding=utf-8
set showcmd

set nowrap
set tabstop=4
set noexpandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set number
set relativenumber
set autoindent

"colorscheme gruvbox

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
