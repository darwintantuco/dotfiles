set encoding=utf-8
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
set timeoutlen=500
set splitright
" show current file path
set statusline+=%F
" spell checking on text mode
set spell spelllang=en_us
" highlight current line
set cursorline

" colorscheme
set background=dark
colorscheme snow

set colorcolumn=100

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" remove hls on insert mode
autocmd InsertEnter * :let @/=""
command! -bang WQ wq<bang>

" delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
