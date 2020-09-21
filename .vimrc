" automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" colorscheme
Plug 'nightsense/snow'
" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" fzf vim wrapper
Plug 'junegunn/fzf.vim'
" jump to any location specified by two characters
Plug 'justinmk/vim-sneak'
" language pack
Plug 'sheerun/vim-polyglot'
" default config
Plug 'tpope/vim-sensible'
" automatically adjusts indent levels
Plug 'tpope/vim-sleuth'
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" comment/uncomment made easy
Plug 'tpope/vim-commentary'
" git wrapper
Plug 'tpope/vim-fugitive'
" wisely add 'end' in ruby files
Plug 'tpope/vim-endwise'
" preview css color in code
Plug 'ap/vim-css-color'
" tree explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" minimalist statusline
Plug 'itchyny/lightline.vim'
" fancy startup screen
Plug 'mhinz/vim-startify'
" visual selection made easy
Plug 'terryma/vim-expand-region'
" helps you stop repeating the basic movement keys
Plug 'takac/vim-hardtime'
" time tracking and metrics
Plug 'wakatime/vim-wakatime'

call plug#end()
