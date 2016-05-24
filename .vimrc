" Configuration

" Pathogen first

execute pathogen#infect()

" Basic Settings

filetype plugin indent on
syntax on
set nocompatible
set modelines=0             " ??
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3             " padding around target when jumping
set autoindent
set showmode                " ??
set showcmd                 " ??
set hidden                  " ??
set wildmenu                " tab completion
set wildmode=list:longest   " tab completion behavior
set visualbell              " no Mac *plunk* noise
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2            " last window always has status line
set number
set relativenumber
set hlsearch
set formatoptions=qrn1
set colorcolumn=80

" Aesthetics

let g:solarized_termcolors=256
colorscheme solarized
" set background=light

" Control shortcuts

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
