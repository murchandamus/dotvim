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

set background=dark
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
set lbr

" NERDTree
nmap <F5> :FZF<CR>
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :RainbowParentheses!!<CR>
nmap <F8> :Ag<CR>

" YCM
let g:ycm_collect_identifiers_from_tags_files = 1

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

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
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'valloric/youcompleteme'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-grepper'
Plugin 'vim-airline/vim-airline'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
