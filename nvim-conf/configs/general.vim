set encoding=UTF-8
set timeoutlen=500 ttimeoutlen=0
filetype plugin indent on
set ts=2 sts=0 expandtab shiftwidth=2
set omnifunc=syntaxcomplete#Complete

" Ignore Paths
set wildignore+=*/node_modules/*
set wildignore+=*/dist/*
set wildignore+=*/project/*
set wildignore+=*/target/*

" Color/Style Settings
colorscheme dracula
syntax on  " Turning Syntax on
set termguicolors
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
set background=dark cursorline
set noruler
set noshowmode

let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
