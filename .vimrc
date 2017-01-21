call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'

call plug#end()

nmap <tab> :NERDTreeToggle<cr>

let g:ctrlp_cmd = 'CtrlP'
set pastetoggle=<F3>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap jj <esc>
map <enter> o<esc>

let g:indentLine_char = '¦'
let g:indentLine_color_term = 239

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
set number
set ignorecase
set ruler

autocmd BufWritePre * %s/\s\+$//e " delete trailing whitespace on :w

if !has("mac")
  source $VIMRUNTIME/mswin.vim
  behave mswin
endif

