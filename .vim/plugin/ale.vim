" Enable completion where available.
let g:ale_completion_enabled = 1

" Fixers
let g:ale_fix_on_save = 1

let g:ale_fixers = {
\ 'javascript': [ 'prettier', 'eslint' ],
\ 'javascript.jsx': [ 'prettier', 'eslint' ],
\ 'elixir': [ 'mix_format' ],
\ 'css': [ 'prettier' ],
\ 'scss': [ 'prettier' ],
\ 'ruby': ['rubocop']
\ }
