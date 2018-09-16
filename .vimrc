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
" easy navigation for rails projects
Plug 'tpope/vim-rails'
" automatically adjusts indent levels
Plug 'tpope/vim-sleuth'

" colorscheme
Plug 'mhartington/oceanic-next'

" essentials
" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" fzf vim wrapper
Plug 'junegunn/fzf.vim'
" default config
Plug 'tpope/vim-sensible'
" wisely add 'end' in ruby files
Plug 'tpope/vim-endwise'
" provide mappings to easily add, change parenthesis, etc
Plug 'tpope/vim-surround'
" comment/uncomment made easy
Plug 'tpope/vim-commentary'
" git wrapper
Plug 'tpope/vim-fugitive'
" async linter
Plug 'w0rp/ale'
" async completion framework
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" syntax highlighting
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-haml'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'
Plug 'elixir-editors/vim-elixir'

" language specific
" write html code faster
Plug 'rstacruz/sparkup'
" formats elixir code on save
Plug 'mhinz/vim-mix-format'
" run rspec inside vim
Plug 'thoughtbot/vim-rspec'
" code formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" fancy stuff
" minimalist statusline
Plug 'itchyny/lightline.vim'
" highlights enclosing tags
Plug 'Valloric/MatchTagAlways'
" time tracking and metrics
Plug 'wakatime/vim-wakatime'
" fancy startup screen
Plug 'mhinz/vim-startify'
" shows keybindings in popup, same as spacemacs
Plug 'liuchengxu/vim-which-key'
" display the indention levels
Plug 'Yggdroot/indentLine'
" tree explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" navigation between panes and vim
Plug 'christoomey/vim-tmux-navigator'
" run your favorite search tool in vim
Plug 'mileszs/ack.vim'
" maintain consistent coding styles
Plug 'editorconfig/editorconfig-vim'

" retired

call plug#end()
