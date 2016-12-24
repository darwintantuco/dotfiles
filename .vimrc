call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_cmd = 'CtrlP'

colorscheme monokai
syntax enable

set colorcolumn=80
set tabstop=2
set list
