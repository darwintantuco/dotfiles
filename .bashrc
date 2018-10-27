[ -f ~/.aliases ] && source ~/.aliases
# cd to last working dir
PROMPT_COMMAND='pwd > ~/.current_dir'
[ -f ~/.current_dir ] && cd "$(< ~/.current_dir)"

# if command -v tmux>/dev/null; then
#   [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
# fi

# Git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
[ -f ~/git-completion.bash ] && source ~/git-completion.bash

# Fancy prompt
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

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

git config --global core.excludesfile .gitignore_global
a
