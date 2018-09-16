if has('nvim')
  call plug#begin('~/.local/share/nvim/site/autoload/plugged')
else
  call plug#begin('~/.vim/plugged')
end

" experimental
" Plug 'takac/vim-hardtime'
" Plug 'tpope/vim-vinegar'
" Plug 'terryma/vim-expand-region'
" Plug 'terryma/vim-multiple-cursors'

" colorscheme
Plug 'mhartington/oceanic-next'

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
" async linter
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
" display the indention levels
Plug 'Yggdroot/indentLine'

" retired

call plug#end()
