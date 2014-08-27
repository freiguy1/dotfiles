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
colorscheme evening
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation
set wildignore+=target,*.swp
"set autoindent 
"set smartindent
"set smarttab
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4
"set expandtab

"autocmd FileType scala setlocal shiftwidth=2 softtabstop=2 expandtab

"imap <C-BS> <C-W>

