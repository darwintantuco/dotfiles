[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[ -f ~/.bashrc ] && source ~/.bashrc
[ -f .aliases ] && source .aliases

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
