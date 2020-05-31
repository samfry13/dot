" Indent Options
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4

" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

" Performance Options
set lazyredraw

" Text Rendering
set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=1
set sidescrolloff=5
syntax enable
set wrap

" Interface Options
set laststatus=2
set ruler
set number
set wildmenu
set tabpagemax=50
set noerrorbells
set mouse=a
set title
colo desert

" Code Folding Options
set foldmethod=manual
set foldnestmax=3

" Misc Options
set autoread
set backspace=indent,eol,start
set confirm
set history=10000
set mouse=a

" Plugins
call plug#begin()
Plug 'dense-analysis/ale'
call plug#end()

" ALE options
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
