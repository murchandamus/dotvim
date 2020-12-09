" Must be first
if &compatible
  " Vim defaults to `compatible` when selecting a vimrc with the command-line
  " `-u` argument. Override this.
  set nocompatible
endif
filetype off

" General settings
syntax on
set showcmd
set number
set ruler

set hlsearch
set incsearch
set showmatch
set ignorecase                " ignore case when searching
set smartcase                 " no ignorecase when capital letter present

set autoindent smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set rnu

" Syntastic settings for beginners
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Highlight unwanted whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

""" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/rainbow_parentheses.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" TODO:
" Consider FZF
" Update Vim to 8.1 and get YouCompleteMe
