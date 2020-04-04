setup: link install

reset: clean link install

install:
	nvim +PlugClean! +PlugInstall +qa

update:
	nvim +PlugClean! +PlugInstall PlugUpdate +qa

link:
	ln -nfs ~/dotfiles/.bash_profile ~/.bash_profile
	ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf
	ln -nfs ~/dotfiles/.vim ~/.vim
	ln -nfs ~/dotfiles/.asdf ~/.asdf
	ln -nfs ~/dotfiles/.tool-versions ~/.tool-versions
	ln -nfs ~/dotfiles/.railsrc ~/.railsrc
	ln -nfs ~/Dropbox/.wakatime.cfg ~/.wakatime.cfg

clean:
	rm -rf ~/.bash_profile
	rm -rf ~/.tmux.conf
	rm -rf ~/.vim
	rm -rf ~/.asdf
	rm -rf ~/.tool-versions
	rm -rf ~/.railsrc
	rm -rf ~/.wakatime.cfg
