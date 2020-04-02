" Fix conflict with coc.nvim
" https://github.com/tpope/vim-endwise/issues/22#issuecomment-554685904
let g:endwise_no_mappings = v:true
inoremap <expr> <Plug>CustomCocCR pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
imap <CR> <Plug>CustomCocCR<Plug>DiscretionaryEnd
