set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'Vimjas/vim-python-pep8-indent'
Plug 'achimnol/python-syntax'
Plug 'chr4/nginx.vim'
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lepture/vim-jinja'
Plug 'ludovicchabant/vim-gutentags'
Plug 'matze/vim-move'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'

call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" space is your leader
let mapleader = "\<Space>"

" convenience mapping for ESC
imap ;; <Esc>

autocmd BufWritePre * StripWhitespace  " strip whitespace on save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colours
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

set background=dark

set colorcolumn=80   " vertical line at max line length
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/backups etc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4        " number of visual spaces per TAB
set shiftwidth=4     " how many columns the reindent operations (<< and >>) use
set softtabstop=4    " how many columns when hit Tab in insert mode
"set expandtab        " tabs are spaces

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set backspace=2 " make backspace work like most other apps
set clipboard=unnamed  " yank to clipboard
""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""
set laststatus=2
set nohlsearch  " turn off search highlighting

set number           " show line numbers
set showcmd          " show command in bottom bar
set showmatch        " highlight matching parentheses
" show line number, column number etc
set ruler

""""""""""""""""""""""""""""""
" Syntax highlighting
""""""""""""""""""""""""""""""
syntax enable


""""""""""""""""""""""""""""""
" Golang
""""""""""""""""""""""""""""""
" use tabs
autocmd Filetype go setlocal noexpandtab


"""""""""""""
" Javascript
"""""""""""""
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType vue setlocal ts=2 sts=2 sw=2 expandtab
