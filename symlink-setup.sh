cd
# shell
ln -nfs ~/dotfiles/.bash_profile ~/.bash_profile
ln -nfs ~/dotfiles/.bashrc ~/.bashrc

# editors
ln -nfs ~/dotfiles/.vim .vim
ln -nfs ~/dotfiles/.vimrc .vimrc
# neovim / vim-plug
ln -nfs ~/dotfiles/.local .local
mkdir -p ~/.config/nvim/ && ln -nfs ~/dotfiles/init.vim ~/.config/nvim/init.vim

# tools
ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf

ln -nfs ~/dotfiles/.asdf/.asdfrc ~/.asdfrc
ln -nfs ~/dotfiles/.asdf/.tool-versions ~/.tool-versions
ln -nfs ~/dotfiles/.asdf/.default-gems ~/.default-gems
ln -nfs ~/dotfiles/.asdf/.default-npm-packages ~/.default-npm-packages

ln -nfs ~/Dropbox/.wakatime.cfg ~/.wakatime.cfg

# rails
ln -nfs ~/dotfiles/.railsrc ~/.railsrc
