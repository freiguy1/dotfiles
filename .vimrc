set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'othree/html5.vim'

Plugin 'rust-lang/rust.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'tpope/vim-sleuth'

Plugin 'elmcast/elm-vim'

Plugin 'dense-analysis/ale'

Plugin 'zig-lang/zig.vim'

call vundle#end()

filetype plugin indent on

syntax on
set ruler
set number
set mouse=a
set ttymouse=sgr
set listchars=trail:•,extends:•,precedes:•,space:•,tab:>- "eol:¬,
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
set linebreak "only splits wrapped lines at whitespace

colorscheme default
hi Visual ctermbg=8
hi Search ctermbg=238
"current line with cursor
hi CursorLine ctermbg=235 cterm=none
"line numbering on left
hi LineNR ctermbg=235 ctermfg=8
"current line with cursor line numbers
hi CursorLineNR ctermbg=236 ctermfg=8 cterm=bold
" Color for whitespace
hi NonText ctermfg=237
" Color for other whitespace
hi SpecialKey ctermfg=237
hi Folded ctermbg=0
hi MatchParen cterm=reverse ctermbg=3 ctermfg=0

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation
set wildignore+=target,*.swp,node_modules,tmp,log,deps,_build,elm-stuff,zig-cache,build

nmap j gj
nmap k gk

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:elm_format_autosave = 1
let g:rustfmt_autosave = 1
let g:ale_set_highlights = 0

