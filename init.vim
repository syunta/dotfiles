if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/denite.nvim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" general
set history=9000

" copy
set clipboard=unnamed

" view
set number
colorscheme desert
set showmatch
set scrolloff=5
set ruler
set showcmd

" cli
set wildmenu

" indent
set autoindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" explore
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1
let g:netrw_list_hide= '.*\.swp$'

" search
set hlsearch
set wrapscan
set smartcase
set noignorecase
set matchpairs& matchpairs+=<:>
set matchtime=3
nmap <silent> <Esc><Esc> :nohlsearch<CR>