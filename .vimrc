call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'mileszs/ack.vim'

call plug#end()

colorscheme monokai
syntax enable

let g:ctrlp_cmd = 'CtrlP'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '·'

nmap <tab> :NERDTreeToggle<cr>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap jj <esc>
map <enter> o<esc>
set pastetoggle=<F3>

set nobackup
set nowritebackup
set noswapfile
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

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
