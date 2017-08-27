
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bashrc

if [[ "$OSTYPE" == "darwin"* ]]; then
	rvm use 2.3.3
fi

[ -f .aliases ] && source .aliases


alias run-spec='bundle exec rspec spec/'
alias git-conflicts='git diff --name-only --diff-filter=U'
alias git-reset-1='git reset --soft HEAD~1'
alias git-ignore='git update-index --assume-unchanged $1'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

