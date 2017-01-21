
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bashrc

if [[ "$OSTYPE" == "darwin"* ]]; then
	rvm use 2.3.3
fi

alias run_tests='bundle exec rspec spec'
alias git_conflicts='git diff --name-only --diff-filter=U'
alias git_reset_1='git reset --soft HEAD~1'
