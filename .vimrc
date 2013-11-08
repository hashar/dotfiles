"
"" Vundle Configuration
"
set nocompatible               " be iMproved
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

" color scheme
"colorscheme solarized
"set background=dark
"let g:solarized_termtrans = 1
"let g:solarized_termcolors = 256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"

" ctags
set tags=tags,vendor.tags,pear.tags,local.tags
set cscopetag cst
set csto=1
cscope add cscope.out
