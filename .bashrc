export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Git branch in prompt.
parse_git_branch()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
