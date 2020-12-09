"Must be first
set nocompatible

"General settings
syntax on
set showcmd
set hlsearch
set incsearch
set number
set cursorline
set autoindent smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set rnu

"Highlight unwanted whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Todo: Rainbow Parentheses
"Todo: Investigate Syntastic
