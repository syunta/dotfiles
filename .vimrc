" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck


" general
set nobackup
set history=1000

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
set scrolloff=5

" cli
set wildmenu
set showcmd
"" for iTerm2
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
inoremap <Esc> <Esc>

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

" search
set hlsearch
set wrapscan
set smartcase
set noignorecase
set matchpairs& matchpairs+=<:>
set matchtime=3
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" tags
set tags=~/.vim/tags/sicp.tag
