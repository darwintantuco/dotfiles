" plugin specific
" toggle NERDTree
nmap <tab> :NERDTreeToggle<cr>
" find
map <leader>f :Ag<space>
" fzf
map <leader>t :FZF<esc>
" vim-which-key
nnoremap <silent> <leader> :WhichKey '\'<cr>
" vim-rspec
map <leader>c :call RunCurrentSpecFile()<cr>
" ale
map <leader>gd :vsplit<cr> :ALEGoToDefinition<cr>

" custom
" map jj to <esc>
inoremap jj <esc>
" map ri to auto-indent current file
map ri gg=G''
" allow :Q
command! -bang Q q<bang>
" allow :W
command! -bang W w<bang>
" allow :Wq
command! -bang Wq wq<bang>

" wat
" nmap <silent> <c-k> :wincmd k<cr>
" nmap <silent> <c-j> :wincmd j<cr>
" nmap <silent> <c-h> :wincmd h<cr>
" nmap <silent> <c-l> :wincmd l<cr>

" bad habits
" disable shift K
map <S-k> <Nop>
" disable dd in normal mode
nmap dd <nop>
" disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
