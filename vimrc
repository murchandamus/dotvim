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
set lbr

" NERDTree
nmap <F5> :FZF<CR>
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :RainbowParentheses!!<CR>
nmap <F8> :Ag<CR>

" YCM
let g:ycm_collect_identifiers_from_tags_files = 1

" Syntastic settings for beginners
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:syntastic_cpp_checkers = ['clang_check', 'gcc']

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
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'valloric/youcompleteme'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-grepper'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
