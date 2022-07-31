call plug#begin(stdpath('data') . '/plugged')

" Completion
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'

" Colorschemes
Plug 'chlorm/vim-monokai-truecolor'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'

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