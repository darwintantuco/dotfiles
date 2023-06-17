# apply dark snow colorscheme from vim-plug
[ -f ~/dotfiles/.vim/plugged/snow/shell/snow_dark.sh ] && [ -n "$PS1" ] && sh ~/dotfiles/.vim/plugged/snow/shell/snow_dark.sh

if [[ $(uname -m) == 'arm64' ]]; then
  export PATH=/opt/homebrew/bin:$PATH
fi

# Repeat a command n times (e.g. $ repeat 25 mix test)
repeat() { local i n; n=$1; shift; for ((i=1; i<=n; i++)); do "$@"; done; }

BREW_PREFIX=$(brew --prefix)

# fancy prompt
export PS1="\`if [ \$? != 0 ]; then printf ' \[\033[31m\]\xe2\x9c\x97 '; fi\`\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# aliases
[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases

# cd to last working dir
PROMPT_COMMAND='pwd > ~/.current_dir'
[ -f ~/.current_dir ] && cd "$(< ~/.current_dir)"

# bash completion
[ -f $BREW_PREFIX/etc/bash_completion ] && source $BREW_PREFIX/etc/bash_completion

# show git branch on command line
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# generate ~/.gitconfig
git config --global color.ui auto
git config --global user.name "Darwin Tantuco"
git config --global user.email "dcrtantuco@gmail.com"
git config --global core.editor nvim
git config --global core.excludesfile $HOME/dotfiles/.gitignore_global
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff
git config --global push.default current
git config --global pull.rebase false
git config --global user.signingkey 1AD991AAE601CD85
git config --global commit.gpgsign true
git config --global checkout.defaultRemote origin

# vim
export EDITOR="nvim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export LC_ALL=en_US.UTF-8
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# save erlang/IEx history
export ERL_AFLAGS="-kernel shell_history enabled"

# asdf
# old
[ -f $BREW_PREFIX/opt/asdf/asdf.sh ] && source $BREW_PREFIX/opt/asdf/asdf.sh
# new
[ -f $BREW_PREFIX/opt/asdf/libexec/asdf.sh ] && source $BREW_PREFIX/opt/asdf/libexec/asdf.sh
[ -f $BREW_PREFIX/opt/asdf/etc/bash_completion.d/asdf.bash ] && source $BREW_PREFIX/opt/asdf/etc/bash_completion.d/asdf.bash

# z
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $BREW_PREFIX/etc/profile.d/z.sh ] && source $BREW_PREFIX/etc/profile.d/z.sh
fi

export HOMEBREW_NO_AUTO_UPDATE=1

# https://stackoverflow.com/questions/52671926/rails-may-have-been-in-progress-in-another-thread-when-fork-was-called
# export DISABLE_SPRING=true

# compile asdf erlang without error
export CFLAGS="-O2 -g -fno-stack-check -Wno-error=implicit-function-declaration"
export KERL_CONFIGURE_OPTIONS="--disable-hipe --without-javac --with-ssl=$BREW_PREFIX/opt/openssl@1.1"

# keybase / signed commits
export GPG_TTY=$(tty)

# hide ‘default interactive shell is now zsh’
export BASH_SILENCE_DEPRECATION_WARNING=1

# add helpful docs in iex on erlang functions
export KERL_BUILD_DOCS="yes"

# work
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
