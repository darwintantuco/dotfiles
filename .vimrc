if has('nvim')
  call plug#begin('~/.local/share/nvim/site/autoload/plugged')
else
  call plug#begin('~/.vim/plugged')
end

" Plug 'takac/vim-hardtime'
" Plug 'tpope/vim-vinegar'
" Plug 'terryma/vim-expand-region'
" Plug 'terryma/vim-multiple-cursors'
" syntax highlighting
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-haml'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'
Plug 'elixir-editors/vim-elixir'
" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" fzf vim wrapper
Plug 'junegunn/fzf.vim'
" tree explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" write html code faster
Plug 'rstacruz/sparkup'
" default config
Plug 'tpope/vim-sensible'
" asynchronous linting/fixing
Plug 'w0rp/ale'
" time tracking and metrics
Plug 'wakatime/vim-wakatime'
" navigation between panes and vim
Plug 'christoomey/vim-tmux-navigator'
" wisely add 'end' in ruby files
Plug 'tpope/vim-endwise'
" run your favorite search tool in vim
Plug 'mileszs/ack.vim'
" provide mappings to easily add, change parenthesis, etc
Plug 'tpope/vim-surround'
" git wrapper
Plug 'tpope/vim-fugitive'
" highlights enclosing tags
Plug 'Valloric/MatchTagAlways'
" comment/uncomment made easy
Plug 'tpope/vim-commentary'
" run rspec inside vim
Plug 'thoughtbot/vim-rspec'
" formats elixir code on save
Plug 'mhinz/vim-mix-format'
" easy navigation for rails projects
Plug 'tpope/vim-rails'
" maintain consistent coding styles
Plug 'editorconfig/editorconfig-vim'
" minimalist statusline
Plug 'itchyny/lightline.vim'
" code formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" async completion framework
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" fancy startup screen
Plug 'mhinz/vim-startify'
" shows keybindings in popup, same as spacemacs
Plug 'liuchengxu/vim-which-key'

call plug#end()

colorscheme spacegray

" deoplete
let g:deoplete#enable_at_startup = 1

" vim-mix-format
let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1

" vim-rspec
let g:rspec_command = '!clear && bundle exec rspec {spec}'
map <Leader>c :call RunCurrentSpecFile()<CR>

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" automatically starts vim-hardmode
" let g:hardtime_default_on = 1
" allow jj
" let g:hardtime_maxcount = 3
" let g:hardtime_showmsg = 1

" delete trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" remove hls on insert mode
autocmd InsertEnter * :let @/=""

" close vim when the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif

" " automatically starts NERDTree
" autocmd VimEnter * NERDTree

" " disable netrw, use nerdtree by default
" let loaded_netrwPlugin = 1

let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1

autocmd FileType javascript.jsx runtime! ftplugin/html/sparkup.vim
autocmd FileType *.ejs runtime! ftplugin/html/sparkup.vim

let g:indentLine_color_term = 100
let g:fzf_action = { 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
" let g:airline_theme = 'simple'
let g:jsx_ext_required = 0
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'jinja' : 1,
      \ 'javascript.jsx': 1,
      \ 'eruby': 1 }

if executable('ag')
  " use ggreer/the_silver_searcher in ack.vim
  let g:ackprg = 'ag --vimgrep -i'

  " include hidden files in search, ignore .git
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

" custom colorscheme
" show current git branch
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" " map fzf to \t and disable in nerdtree window
" nnoremap <expr> <leader>t (expand('%') =~ 'NERD_tree' ? '' : ':FZF<esc>')

" show / hide NERDTree
nmap <tab> :NERDTreeToggle<cr>

" vim-which-key
nnoremap <silent> <leader> :WhichKey '\'<CR>

" find
map \f :Ack!<space>

" FZF
map \t :FZF<esc>

" map <tab> :Lexplore<esc>

" map jj to <esc>
inoremap jj <esc>
" disable shift K
map <S-k> <Nop>
" map ri to auto-indent current file
map ri gg=G''

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

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
" show current line number
set number
" highlight current line
set cursorline
" allow to cw until next underscore
set iskeyword-=_
set timeoutlen=500
