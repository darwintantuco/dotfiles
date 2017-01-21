call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'

call plug#end()

nmap <tab> :NERDTreeToggle<cr>

let g:ctrlp_cmd = 'CtrlP'
set pastetoggle=<F3>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set nobackup
set nowritebackup
set noswapfile

colorscheme monokai
syntax enable

set colorcolumn=80

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

set clipboard=unnamed
set number " line numbers
set ignorecase " ignore case when searching
set ruler

