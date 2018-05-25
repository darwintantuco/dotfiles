cd
ln -nfs ~/dotfiles/.bash_profile ~/.bash_profile
ln -nfs ~/dotfiles/.bashrc ~/.bashrc

ln -nfs ~/dotfiles/.spacemacs ~/.spacemacs

ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf

ln -nfs ~/dotfiles/.gitconfig ~/.gitconfig
ln -nfs ~/dotfiles/.aliases ~/.aliases

ln -nfs ~/dotfiles/.vim .vim
ln -nfs ~/dotfiles/.vimrc .vimrc

ln -nfs ~/dotfiles/.asdfrc ~/.asdfrc
ln -nfs ~/dotfiles/.tool-versions ~/.tool-versions
ln -nfs ~/dotfiles/.default-gems ~/.default-gems

ln -nfs ~/dotfiles/git-completion.bash ~/git-completion.bash

ln -nfs ~/Dropbox/.wakatime.cfg ~/.wakatime.cfg
ln -nfs ~/dotfiles/.git_ignore_global ~/.gitignore_global && git config --global core.excludesfile ~/.gitignore_global
