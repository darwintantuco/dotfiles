" map jj to <esc>
inoremap jj <esc>
" map ri to auto-indent current file
map ri gg=G''

nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang Wq wq<bang>

set pastetoggle=<F3>
set hls
set clipboard=unnamed
set splitright
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set breakindent
set synmaxcol=250
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" show current line number
set number
" " highlight current line
" set cursorline
" allow to cw until next underscore
" set iskeyword-=_
set timeoutlen=500
" set relativenumber
set splitright

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" remove hls on insert mode
autocmd InsertEnter * :let @/=""
command! -bang WQ wq<bang>

" delete trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" bad habits
" disable shift K
map <S-k> <Nop>
" disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
" disable dd in normal mode
nmap dd <nop>

" show current file path
set statusline+=%F
