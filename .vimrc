call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'Valloric/MatchTagAlways'
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-haml'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'mileszs/ack.vim'
Plug 'rstacruz/sparkup'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'briancollins/vim-jst'

call plug#end()

colorscheme spacegray

" vertical bar color
highlight ColorColumn ctermbg=red

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" delete trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" remove hls on insert mode
autocmd InsertEnter * :let @/=""

" close vim when the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif

" automatically starts NERDTree
autocmd VimEnter * NERDTree

" disable netrw, use nerdtree by default
let loaded_netrwPlugin = 1

let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1

autocmd FileType javascript.jsx runtime! ftplugin/html/sparkup.vim
autocmd FileType *.ejs runtime! ftplugin/html/sparkup.vim

let g:indentLine_color_term = 100
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
  " use ggreer/the_silver_searcher in ack.vim
  let g:ackprg = 'ag --vimgrep -i'

  " include hidden files in search, ignore .git
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

" map fzf to \t and prevent opening file in nerdtree window
nnoremap <silent> <expr> <Leader>t (expand('%') =~ 'NERD_tree' ?
                    \ '' : ':FZF<esc>')

" show / hide NERDTree
nmap <tab> :NERDTreeToggle<cr>

" find
map \f :Ack!<space>

" map jj to <esc>
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
set ignorecase
set breakindent
set synmaxcol=250
set expandtab

" show current line number
set number

" show relative line numbers
set relativenumber

" show vertical bar
set colorcolumn=80
