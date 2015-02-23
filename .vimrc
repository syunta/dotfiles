" neobundle
set runtimepath+=~/.vim/bundle/neobundle.vim/
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" plugin
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'

call neobundle#end()
" Required:
"filetype plugin indent on

NeoBundleCheck

" general
set nobackup
set scrolloff=5

" copy
set clipboard+=autoselect
set clipboard+=unnamed

" edit
set backspace=indent,eol,start

" view
set number
colorscheme peachpuff
syntax on
set showmatch

" cli
set wildmenu
set showcmd

" indent
set autoindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set history=200
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" explore
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1

" search
set hlsearch
set wrapscan
set smartcase
set noignorecase
set matchpairs& matchpairs+=<:>
set matchtime=3

" tags
set tags=/Users/syunta/.vim/tags/sicp.tag

" scheme
set filetype=scheme
setlocal lisp

" coffee
set filetype=coffee
setlocal tabstop=2 autoindent expandtab shiftwidth=2
