" Plugins
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'edkolev/promptline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
"Plug 'lifepillar/vim-solarized8'
Plug 'edkolev/tmuxline.vim'
call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" Gruvbox options
colorscheme gruvbox
autocmd vimenter * hi! Normal guibg=NONE ctermbg=NONE

" Airline options
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1

" Promptline options
let g:promptline_theme = 'airline'

" ALE options
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

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
set title
if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

" Code Folding Options
set foldmethod=manual
set foldnestmax=3

" Misc Options
set autoread
set backspace=indent,eol,start
set confirm
set history=10000
set mouse=a
