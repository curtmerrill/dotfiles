" Pathogen plugin
call pathogen#incubate()
call pathogen#helptags()

" Enable syntax highlighting
syntax on

" Use UTF-8 by default
set encoding=utf-8

" Always show status line
set laststatus=2

" Use solarized dark colorscheme in terminal
" solarized light colorscheme in gui
set t_Co=256
colorscheme solarized
if has('gui-running')
    set background=light
else
    set background=dark
endif

" Use 4 spaces for tabs
set expandtab
set tabstop=4
set shiftwidth=4

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

" Airline settings
let g:airline#extensions#tabline#enabled=1  " use airline tabs
