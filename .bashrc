# Fancy prompt
export PS1="\`if [ \$? != 0 ]; then printf ' \[\033[31m\]\xe2\x9c\x97 '; fi\`\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Apply dark snow colorscheme from vim-plug
[ -n "$PS1" ] && sh ~/.vim/plugged/snow/shell/snow_dark.sh

# Aliases
[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases
a

# cd to last working dir
PROMPT_COMMAND='pwd > ~/.current_dir'
[ -f ~/.current_dir ] && cd "$(< ~/.current_dir)"

# Bash completion
[ -f $(brew --prefix)/etc/bash_completion ] && source $(brew --prefix)/etc/bash_completion

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
git config --global push.default current

# Vim
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export LC_ALL=en_US.UTF-8
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Save erlang/IEx history
export ERL_AFLAGS="-kernel shell_history enabled"

# ASDF
[ -f $HOME/.asdf/asdf.sh ] && source $HOME/.asdf/asdf.sh
[ -f $HOME/.asdf/completions/asdf.bash ] && source $HOME/.asdf/completions/asdf.bash
# via brew
[ -f /usr/local/opt/asdf/asdf.sh ] && source /usr/local/opt/asdf/asdf.sh
[ -f /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash ] && source /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# z
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
