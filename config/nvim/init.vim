call plug#begin(stdpath('data') . '/plugged')

" Completion
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'

" Colorschemes
Plug 'cocopon/iceberg.vim'

" Utils
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

" Look and feel
set termguicolors
set background=dark
colorscheme iceberg

" Editing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Editor
set number

" Plugin configurations - vim-airline
let g:airline_experimental = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
