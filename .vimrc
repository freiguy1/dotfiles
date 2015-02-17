set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'ervandew/supertab'

Plugin 'derekwyatt/vim-scala'

Plugin 'othree/html5.vim'

Plugin 'gre/play2vim'

Plugin 'wting/rust.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()

filetype plugin indent on

syntax on
set ruler
set number
set mouse=a
set list
set expandtab
set softtabstop=4
set shiftwidth=4

set incsearch
set ignorecase
set smartcase
set hlsearch
set cursorline


colorscheme default
hi Visual cterm=reverse ctermbg=none ctermfg=none
hi Search cterm=reverse ctermbg=none ctermfg=none
hi CursorLine ctermbg=8 cterm=none
hi LineNR ctermbg=8
hi CursorLineNR ctermbg=8 cterm=bold

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation
set wildignore+=target,*.swp

nmap j gj
nmap k gk

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

