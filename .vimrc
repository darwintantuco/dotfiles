call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

set clipboard=unnamed

syntax enable
colorscheme monokai

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_cmd = 'CtrlP'

