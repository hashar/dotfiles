"
"" Vundle Configuration
"
set nocompatible               " be iMproved
set title                      " update window title
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" Syntax checker
Bundle 'scrooloose/syntastic'
" Supports for twig
Bundle 'evidens/vim-twig'
" Explorer, juggler
Bundle 'sjbach/lusty'
" Finder
Bundle 'kien/ctrlp.vim'
" Status line
Bundle 'itchyny/lightline.vim'
" Phpspec
Bundle 'Herzult/phpspec-vim'
" Xdebug
Bundle 'joonty/vdebug.git'
" Git integration
Plugin 'tpope/vim-fugitive'
" Track snippets engine.
Plugin 'SirVer/ultisnips'
" Add snippets
Plugin 'honza/vim-snippets'

filetype plugin indent on     " required!

"
" General configuration
"
set encoding=utf-8

if !has('gui_running')
  set t_Co=256
endif

set laststatus=2

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc,*.pyo,*.log,**/cache/**,**/logs/**,**/zend/**,**/vendor/**/vendor/**,web/css,web/js,web/bundles,*/project/*,*/target/*,*.hi

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

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile

let mapleader=","

autocmd FileType * set tabstop=4
autocmd FileType * set softtabstop=4
autocmd FileType * set shiftwidth=4

let g:ctrlp_cmd = 'CtrlPMRU'

"Syntastic
let g:syntastic_mode_map={ 'mode': 'active',
    \ 'active_filetypes': ['php'],
    \ 'passive_filetypes': ['css', 'scss'] }
let g:syntastic_error_symbol   = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_php_checkers=['php', 'phpmd', 'phpcs']
let g:syntastic_php_phpcs_args="--report=csv --standard=PSR2"
let g:syntastic_aggregate_errors = 1

" ctags
set tags=tags,vendor.tags,pear.tags,local.tags
set cscopetag cst
set csto=1
cscope add cscope.out

" color scheme
colorscheme solarized
set background=dark

" status line
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component': {
    \     'readonly': '%{&readonly?"⭤":""}',
    \     'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \     'fugitive': '%{exists("*fugitive#head")?"⭠ " . fugitive#head():""}'
    \ },
    \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
    \ }

autocmd BufWrite * :call <SID>MkdirsIfNotExists(expand('<afile>:h'))

function! <SID>MkdirsIfNotExists(directory)
    if(!isdirectory(a:directory))
        call system('mkdir -p '.shellescape(a:directory))
    endif
endfunction

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Load also my own snippets
let g:snips_author = "Nicolas Dupont <nicolas@akeneo.com>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "nidupsnippets"]
