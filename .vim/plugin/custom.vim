set background=dark
colorscheme snow
set termguicolors

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
set cursorline
" allow to cw until next underscore
" set iskeyword-=_
set timeoutlen=500
set relativenumber
set splitright

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" remove hls on insert mode
autocmd InsertEnter * :let @/=""
command! -bang WQ wq<bang>

" delete trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" show current file path
set statusline+=%F

" use old regex engine, improves ruby syntax highlighting performance
set re=1
