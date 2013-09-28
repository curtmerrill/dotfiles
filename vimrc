" Pathogen plugin
call pathogen#incubate()
call pathogen#helptags()

" Enable syntax highlighting
syntax on

" Use solarized dark colorscheme in terminal
" solarized light colorscheme in gui
if has('gui-running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

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


