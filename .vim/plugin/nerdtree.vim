" close vim when the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1

" old

" " automatically starts NERDTree
" autocmd VimEnter * NERDTree

" " disable netrw, use nerdtree by default
" let loaded_netrwPlugin = 1

" " map fzf to \t and disable in nerdtree window
" nnoremap <expr> <leader>t (expand('%') =~ 'NERD_tree' ? '' : ':FZF<esc>')
