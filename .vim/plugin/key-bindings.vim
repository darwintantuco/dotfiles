" plugin specific
"
" toggle NERDTree
nmap <leader><tab> :NERDTreeToggle<cr>

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
"
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

" reload vimrc
map <leader>r :so $MYVIMRC<cr>

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
