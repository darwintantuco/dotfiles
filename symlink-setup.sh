cd
ln -nfs ~/dotfiles/.bash_profile ~/.bash_profile
ln -nfs ~/dotfiles/.bashrc ~/.bashrc

ln -nfs ~/dotfiles/.spacemacs ~/.spacemacs

ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf

# vim / vim-plug
ln -nfs ~/dotfiles/.vim .vim
ln -nfs ~/dotfiles/.vimrc .vimrc

# neovim / vim-plug
ln -nfs ~/dotfiles/.local .local
mkdir -p ~/.config/nvim/ && ln -nfs ~/dotfiles/init.vim ~/.config/nvim/init.vim

# asdf
ln -nfs ~/dotfiles/.asdf/.asdfrc ~/.asdfrc
ln -nfs ~/dotfiles/.asdf/.tool-versions ~/.tool-versions
ln -nfs ~/dotfiles/.asdf/.default-gems ~/.default-gems
ln -nfs ~/dotfiles/.asdf/.default-npm-packages ~/.default-npm-packages

ln -nfs ~/Dropbox/.wakatime.cfg ~/.wakatime.cfg

ln -nfs ~/dotfiles/rollback.sh ~/rollback.sh
