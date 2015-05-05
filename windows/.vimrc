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

Plugin 'tpope/vim-rails'

Plugin 'tpope/vim-sleuth'

Plugin 'chriskempson/base16-vim'

call vundle#end()

filetype plugin indent on

syntax on
set ruler
set number
set mouse=a
set listchars=eol:¬
set list
set expandtab
set softtabstop=4
set shiftwidth=4
set incsearch
set ignorecase
set smartcase
set hlsearch
set cursorline
set splitbelow
set splitright
set backspace=2

" Folding schtuff
set fdm=syntax
set foldnestmax=3
" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window.
autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
autocmd InsertLeave * let &l:foldmethod=w:last_fdm

colorscheme base16-default
set guifont=Droid_Sans_Mono:h10:cANSI
" hi Visual gui=reverse guibg=none guifg=none
" hi Search gui=reverse guibg=none guifg=none
" hi CursorLine guibg=8 gui=none
" hi LineNR guibg=8 guifg=7
" hi CursorLineNR guibg=8 guifg=7 gui=bold
" hi NonText guifg=8
" hi Folded guibg=0

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation
set wildignore+=target,*.swp,node_modules,tmp,log

nmap j gj
nmap k gk

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

