" do not try to be vi compatible
set nocompatible

" numbers the lines
set number

" highlights syntax
syntax on

" tab space
set tabstop=4

" auto indent
set autoindent

set smartindent

" indenting for gg=G
set shiftwidth=4

" show file name in status bar
set laststatus=2

" set file stats
set ruler

" blinking cursor instead of beep on error
" set visualbell

" encoding
set encoding=utf-8

" whitespace
set wrap
" set textwidth=79
set formatoptions=tcqrn1
set noshiftround

" Cursor motion
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Last line
set showmode
set showcmd

" spell check
" set spell

" scroll at EOF
set scrolloff=5
filetype plugin on
let mapleader = ","

highlight clear SignColumn

" parenthesis adder
"inoremap ( ()<Esc>:let leavechar=")"<CR>i
"inoremap [ []<Esc>:let leavechar="]"<CR>i
"inoremap { {}<Esc>:let leavechar="}"<CR>i
"inoremap ' ''<Esc>:let leavechar="'"<CR>i

" "inoremap { {<CR><BS>}<Esc>ko

" parenthesis deleter
