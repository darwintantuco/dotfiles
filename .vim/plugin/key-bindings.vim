" toggle NERDTree
nmap <tab> :NERDTreeToggle<cr>

" find
map <leader>f :Ack!<space>

" fzf
map <leader>t :FZF<esc>

" vim-which-key
nnoremap <silent> <leader> :WhichKey '\'<cr>

" vim-rspec
map <leader>c :call RunCurrentSpecFile()<cr>

" ale
map <leader>gd :vsplit<cr> :ALEGoToDefinition<cr>
