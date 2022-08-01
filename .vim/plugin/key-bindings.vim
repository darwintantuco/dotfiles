" toggle NERDTree
nmap <leader><tab> :NERDTreeToggle<cr>
" open current file on NERDTree
map <leader>o :NERDTreeFind<cr>

" find
map <leader>f :Ag<space>
" fzf
map <leader>t :FZF<esc>

" map jj to <esc>
inoremap jj <esc>
" allow :Q
command! -bang Q q<bang>
" allow :W
command! -bang W w<bang>
" allow :Wq
command! -bang Wq wq<bang>
" use ctrl-[hjkl] to select/move between window/pane
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" sort
map <leader><leader> :sort i<cr>

" vim-which-key
nnoremap <silent> <leader> :WhichKey '\'<cr>
" vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>

