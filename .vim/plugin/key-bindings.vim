" toggle NERDTree
nmap <leader><tab> :NERDTreeToggle<cr>
" find
map <leader>f :Ag<space>
" fzf
map <leader>t :FZF<esc>
" vim-which-key
nnoremap <silent> <leader> :WhichKey '\'<cr>

" map jj to <esc>
inoremap jj <esc>
" allow :Q
command! -bang Q q<bang>
" allow :W
command! -bang W w<bang>
" allow :Wq
command! -bang Wq wq<bang>
" disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
" use ctrl-[hjkl] to select/move between window/pane
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
