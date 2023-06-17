# aliases
[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases

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
set -x EDITOR "nvim"
set -x USE_EDITOR $EDITOR
set -x VISUAL $EDITOR
set -x LC_ALL en_US.UTF-8

set -x HOMEBREW_NO_AUTO_UPDATE 1

# keybase / signed commits
set -x GPG_TTY $(tty)
