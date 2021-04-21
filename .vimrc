"Vundle config
set nocompatible
filetype off

" set runtype path to include Vundle and intialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
" For git changes
Plugin 'airblade/vim-gitgutter'
" For git repos
Plugin 'tpope/vim-fugitive'
" Better status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Color scheme 
Plugin 'lokaltog/vim-distinguished'

" All Plugins must be set before this line
call vundle#end()
filetype plugin indent on   " detect filetype and apply any plugins/indentation

" When to lint
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_w = 1
" indent guides
let g:indent_guides_start_level = 2

" Add a line in between bracket or paran
imap <C-c> <CR><Esc>O

" Vim styles underneath
syntax on
set background=dark
set number
set colorcolumn=80
filetype plugin indent on
set tabstop=4         " number of spaces vim adds in when reading a file
set softtabstop=4     " number of spaces in tab when editing
set shiftwidth=4
set autoindent
set expandtab         " turn tabs into spaces
set cursorline        " show a line under the cursor's current line
set showmatch         " show the matching pair for [] {} and ()
let python_highlight_all = 1
set hlsearch          " highlight searches
set clipboard=unnamed " copy from one terminal to the other
set t_Co=256          " enable 256 colour pallet
set laststatus=2      " enable airline status bar by default
set backspace=2       " fix issue where backspace won't erase on centos
autocmd BufWritePre * :%s/\s\+$//e  " remove trailing whitespace on save
colorscheme distinguished
