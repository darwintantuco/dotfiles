call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'mileszs/ack.vim'
Plug 'wincent/command-t', {'do': 'cd ruby/command-t && ruby extconf.rb && make'}
Plug 'sjbach/lusty'

call plug#end()

colorscheme monokai
syntax enable

let NERDTreeShowHidden=1
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '·'

nmap <tab> :NERDTreeToggle<cr>
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
set colorcolumn=80
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set clipboard=unnamed
set number
set ignorecase
set ruler
set hidden

autocmd BufWritePre * %s/\s\+$//e " delete trailing whitespace on :w

if !has("mac")
  source $VIMRUNTIME/mswin.vim
  behave mswin
endif

