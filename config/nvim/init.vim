call plug#begin(stdpath('data') . '/plugged')

" Completion
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'github/copilot.vim'

" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'

" Utils
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

" Look and feel
set termguicolors
set background=dark
colorscheme stellarized

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
set mouse+=a
set clipboard+=unnamedplus

" Plugin configurations - vim-airline
" Memo: Those glyphs are located around U+E0B0 - U+E0D4
let g:airline_experimental = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
