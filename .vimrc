" automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if has('nvim')
  call plug#begin('~/.local/share/nvim/site/autoload/plugged')
else
  call plug#begin('~/.vim/plugged')
end

" experimental
"
" helps you stop repeating the basic movement keys
" Plug 'takac/vim-hardtime'
"
" netrw on steroids
" Plug 'tpope/vim-vinegar'
"
" sublime text style multiple selection
" Plug 'terryma/vim-multiple-cursors'
"
" easy navigation for rails projects
" Plug 'tpope/vim-rails'
"
" maintain consistent coding styles
" Plug 'editorconfig/editorconfig-vim'
"
" simplify importing JS modules
" Plug 'Galooshi/vim-import-js'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" colorscheme
Plug 'nightsense/snow'

" essentials
"
" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" fzf vim wrapper
Plug 'junegunn/fzf.vim'

" default config
Plug 'tpope/vim-sensible'

" automatically adjusts indent levels
Plug 'tpope/vim-sleuth'

" provide mappings to easily add, change parenthesis, etc
Plug 'tpope/vim-surround'

" comment/uncomment made easy
Plug 'tpope/vim-commentary'

" git wrapper
Plug 'tpope/vim-fugitive'

" async linter and fixer
" Plug 'dense-analysis/ale'

" async completion framework
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif

" jump to any location specified by two characters
Plug 'justinmk/vim-sneak'

" language pack
Plug 'sheerun/vim-polyglot'

" language specific
"
" write html code faster
Plug 'rstacruz/sparkup'

" run rspec inside vim
Plug 'thoughtbot/vim-rspec'

" wisely add 'end' in ruby files
" Plug 'tpope/vim-endwise'

" preview css color in code
Plug 'ap/vim-css-color'

" fancy stuff
"
" tree explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

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

" navigation between panes and vim
Plug 'christoomey/vim-tmux-navigator'

" visual selection made easy
Plug 'terryma/vim-expand-region'

" preview markdown files
Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()

" retired
"
" display the indention levels
" Plug 'Yggdroot/indentLine',
" * slow in js files :(
"
" " run your favorite search tool in vim
" Plug 'mileszs/ack.vim',
" * use Ag instead

" syntax highlighting
" Plug 'mxw/vim-jsx'
" Plug 'tpope/vim-haml'
" Plug 'digitaltoad/vim-pug'
" Plug 'pangloss/vim-javascript'
" Plug 'elixir-editors/vim-elixir'
" * use vim-polyglot instead
"
" formats elixir code on save
" Plug 'mhinz/vim-mix-format'
" * format on ale instead
"
" code formatter
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" * format on ale instead
