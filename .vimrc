call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'
Plug 'wikitopian/hardmode'

call plug#end()

colorscheme spacegray

let NERDTreeShowHidden=1
let g:indentLine_color_term = 239 " gray
let g:fzf_action={ 'ctrl-v': 'vsplit' }
let g:airline_theme='simple'

if executable('ag')
  let g:ackprg = 'ag --vimgrep -i' " use ggreer/the_silver_searcher in ack.vim
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
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

set pastetoggle=<F3>
set hls
" set clipboard=unnamed
set splitright
set nobackup
set nowritebackup
set noswapfile
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number
set ignorecase
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray
highlight Search ctermfg=black ctermbg=lightyellow

autocmd BufWritePre * %s/\s\+$//e " delete trailing whitespace on :w
" autocmd InsertEnter * :let @/="" "remove hls on insert mode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" if !has("mac")
"   source $VIMRUNTIME/mswin.vim
"   behave mswin
" endif

