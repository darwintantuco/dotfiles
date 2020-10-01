# Apply dark snow colorscheme from vim-plug
[ -f ~/dotfiles/.vim/plugged/snow/shell/snow_dark.sh ] && [ -n "$PS1" ] && sh ~/dotfiles/.vim/plugged/snow/shell/snow_dark.sh

BREW_PREFIX=$(brew --prefix)

# Fancy prompt
export PS1="\`if [ \$? != 0 ]; then printf ' \[\033[31m\]\xe2\x9c\x97 '; fi\`\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Aliases
[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases
a

# cd to last working dir
PROMPT_COMMAND='pwd > ~/.current_dir'
[ -f ~/.current_dir ] && cd "$(< ~/.current_dir)"

# Bash completion
[ -f $BREW_PREFIX/etc/bash_completion ] && source $BREW_PREFIX/etc/bash_completion

# Git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Generate ~/.gitconfig
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

# Vim
export EDITOR="nvim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export LC_ALL=en_US.UTF-8
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Save erlang/IEx history
export ERL_AFLAGS="-kernel shell_history enabled"

# ASDF
[ -f $BREW_PREFIX/opt/asdf/asdf.sh ] && source $BREW_PREFIX/opt/asdf/asdf.sh
[ -f $BREW_PREFIX/opt/asdf/etc/bash_completion.d/asdf.bash ] && source $BREW_PREFIX/opt/asdf/etc/bash_completion.d/asdf.bash

# z
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $BREW_PREFIX/etc/profile.d/z.sh ] && source $BREW_PREFIX/etc/profile.d/z.sh
fi

# https://stackoverflow.com/questions/52671926/rails-may-have-been-in-progress-in-another-thread-when-fork-was-called
export DISABLE_SPRING=true

# Compile/install erlang on macOS Catalina
export CFLAGS="-O2 -g -fno-stack-check -Wno-error=implicit-function-declaration"
export KERL_CONFIGURE_OPTIONS="--disable-hipe --without-javac --with-ssl=$BREW_PREFIX/opt/openssl@1.1"

# keybase
GPG_TTY=$(tty)
export GPG_TTY

# hide ‘default interactive shell is now zsh’
export BASH_SILENCE_DEPRECATION_WARNING=1
