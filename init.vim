set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set number
set nohlsearch
set hidden
set noerrorbells
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8

set cmdheight=2

set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
call plug#end()


" set best colorscheme ever
colorscheme molokai
