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

" vim setup for python
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" React plugins
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'jparise/vim-graphql'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'neoclide/coc.nvim'

" File Explorer
" Plugin 'preservim/nerdtree'

" Fuzzy finder
" Plugin 'ctrlpvim/ctrlp.vim'

" Intellij theme
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
set bg=dark

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Python PEP 8 indentation
au BufNewFile,BufRead *.py set 
			\ tabstop=4 
			\ softtabstop=4
			\ shiftwidth=4
			\ textwidth=79 
			\ expandtab 
			\ autoindent 
			\ fileformat=unix

" Fullstack indentation
au BufNewFile,BufRead *.js, *.html, *.css
			\ tabstop=2
			\ softtabstop=2
			\ shiftwidth=2

" Flag bad whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

let python_highlight_all=1
syntax on
set rnu

" NerdTree

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

