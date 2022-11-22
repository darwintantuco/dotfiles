set encoding=utf-8
set pastetoggle=<F3>
set hls
set clipboard=unnamed
set splitright
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
set termguicolors
colorscheme snow
set background=dark

set colorcolumn=100

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" remove hls on insert mode
autocmd InsertEnter * :let @/=""
command! -bang WQ wq<bang>

" delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" coc-nvim specific
"
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

