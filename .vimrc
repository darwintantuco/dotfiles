call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'mileszs/ack.vim'

call plug#end()

let NERDTreeShowHidden=1
let g:fzf_action={
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:airline_theme='simple'

if executable('ag')
  let g:ackprg = 'ag --vimgrep -i' " use ggreer/the_silver_searcher
endif

nmap <tab> :NERDTreeToggle<cr>
map \t  :FZF<esc>
map \f :Ack
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap jj <esc>
map <enter> O<esc>

set pastetoggle=<F3>
set nobackup
set nowritebackup
set noswapfile
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set clipboard=unnamed
set number
set ignorecase
set colorcolumn=80
highlight ColorColumn ctermbg=7

autocmd BufWritePre * %s/\s\+$//e " delete trailing whitespace on :w

if !has("mac")
  source $VIMRUNTIME/mswin.vim
  behave mswin
endif

