call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-haml'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Valloric/MatchTagAlways'
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'
Plug 'wikitopian/hardmode'
Plug 'rstacruz/sparkup'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'briancollins/vim-jst'

call plug#end()

colorscheme spacegray
highlight ColorColumn ctermbg=darkgray
highlight Search ctermfg=black ctermbg=lightyellow

autocmd BufWritePre * %s/\s\+$//e  " delete trailing whitespace on :w
autocmd InsertEnter * :let @/=""  " remove hls on insert mode
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif
autocmd FileType javascript.jsx runtime! ftplugin/html/sparkup.vim
autocmd FileType *.ejs runtime! ftplugin/html/sparkup.vim
autocmd VimEnter * NERDTree
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

let loaded_netrwPlugin = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
let g:indentLine_color_term = 239  " gray
let g:fzf_action = { 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
let g:airline_theme = 'simple'
let g:jsx_ext_required = 0
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'jinja' : 1,
      \ 'javascript.jsx': 1,
      \ 'eruby': 1
      \ }

if executable('ag')
  let g:ackprg = 'ag --vimgrep -i'  " use ggreer/the_silver_searcher in ack.vim
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
                              " include hidden files in search, ignore .git
endif

nnoremap <leader>h <esc>:call ToggleHardMode()<cr>
nmap <tab> :NERDTreeToggle<cr>
map \t :FZF<esc>
map \f :Ack!<space>
" map <enter> <insert><enter> <esc>

inoremap jj <esc>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

set pastetoggle=<F3>
set hls
set clipboard=unnamed
set splitright
set nobackup
set nowritebackup
set noswapfile
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number  " show current line number
set relativenumber  " show relative line numbers
set ignorecase
set colorcolumn=80
set breakindent
set synmaxcol=250
