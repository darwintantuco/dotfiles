[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases
a

# cd to last working dir
PROMPT_COMMAND='pwd > ~/.current_dir'
[ -f ~/.current_dir ] && cd "$(< ~/.current_dir)"

# Git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
[ -f ~/dotfiles/git-completion.bash ] && source ~/dotfiles/git-completion.bash

# Generate ~/.gitconfig
git config --global color.ui auto
git config --global user.name "darwin christopher tantuco"
git config --global user.email darwinxciii@yahoo.com
git config --global core.editor vim
git config --global core.excludesfile $HOME/dotfiles/.gitignore_global
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff

# Fancy prompt
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Apply dark snow colorscheme from vim-plug
[ -n "$PS1" ] && sh ~/.vim/plugged/snow/shell/snow_dark.sh

# Vim
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Save erlang/IEx history
export ERL_AFLAGS="-kernel shell_history enabled"

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
