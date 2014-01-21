"
"" Vundle Configuration
"
set nocompatible               " be iMproved
set title                      " update window title
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!

"
" General configuration
"
set encoding=utf-8

syntax enable
filetype plugin indent on

set number    " Display line number
set ruler     " position of cursor
set wrap      " split long lines
set scrolloff=3 " min of 3 lines around cursor
set ignorecase " no case during search
set smartcase  " except if there is an upper case
set incsearch  " highlight search results during typing
set hlsearch   " highlight search results
set backspace=indent,eol,start " default behavior for backspace
set hidden     " hide file when open other files

set expandtab " Use spaces instead of tabs

autocmd FileType * set tabstop=4
autocmd FileType * set softtabstop=4
autocmd FileType * set shiftwidth=4

":nnoremap g ddp " move line under
":nnoremap G ddkP " move line above

"Syntastic
let g:syntastic_mode_map={ 'mode': 'active',
    \ 'active_filetypes': ['ruby', 'php'],
    \ 'passive_filetypes': ['css', 'scss'] }
let g:syntastic_error_symbol   = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" ctags
set tags=tags,vendor.tags,pear.tags,local.tags
set cscopetag cst
set csto=1
cscope add cscope.out

" color scheme
colorscheme solarized
set background=dark

"let g:solarized_termtrans = 1
"let g:solarized_termcolors = 256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"

