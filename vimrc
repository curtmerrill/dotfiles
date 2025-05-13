" Enable syntax highlighting
syntax on
set termguicolors

" Use UTF-8 by default
set encoding=utf-8

" Always show status line
set laststatus=2

set t_Co=256
colorscheme base16-solarized-light

" Use 4 spaces for tabs
set expandtab
set tabstop=4
set shiftwidth=4

" auto indent (new line starts at same indentation as current line)
set autoindent

" Softwrap lines
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set formatoptions+=1
set colorcolumn=85      " colorize column 85

" Show line numbers
set nu
set relativenumber

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Ignore case for lowercase searches,
" Case senstive for uppercase searches
set ignorecase
set smartcase

