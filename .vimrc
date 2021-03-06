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
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'othree/html5.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'kana/vim-filetype-haskell'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'JulesWang/css.vim'
NeoBundle 'cakebaker/scss-syntax.vim'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck


" general
set nobackup
set history=9000

" encoding
set fileencodings=utf-8,cp932,sjis,euc-jp,latin1

" copy
set clipboard+=autoselect
set clipboard+=unnamed

" edit
set backspace=indent,eol,start

" view
set number
colorscheme desert
syntax on
set showmatch
set scrolloff=5
set ruler
set showcmd

" cli
set wildmenu
set showcmd
"" for iTerm2
let &t_SI.="\e[6 q"
let &t_EI.="\e[2 q"
set ttimeoutlen=10
inoremap <ESC> <ESC>

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
