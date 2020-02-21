set nocompatible
set encoding=utf-8
scriptencoding utf-8
filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'eagletmt/ghcmod-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'w0ng/vim-hybrid'

call plug#end()

" general
set history=9000

" copy
set clipboard=unnamed

" view
set number
set background=dark
colorscheme hybrid
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

" syntastics
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_haskell_checkers = ['hlint']

" Use deoplete.
let g:deoplete#enable_at_startup = 1
