default: help

help:
	@echo
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-].*?: .*?## .*$$' Makefile | sed 's#\\:#:#g' | awk 'BEGIN {FS = ": .*?## "}; {printf "\033[36m  %-20s\033[0m %s\n", $$1, $$2}'
	@echo

setup: link install ## Run link and install

reset: clean link install ## Run clean, link and install

install: ## Install vim and asdf plugins
	-asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
	-asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	-export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
	-asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
	-asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
	asdf install
	nvim +PlugClean! +PlugInstall +qa
	heroku plugins:install heroku-accounts
	-createuser -s postgres || true
	-pip3 install neovim --upgrade

update: ## Update vim and asdf plugins
	nvim +PlugClean! +PlugInstall PlugUpdate +qa
	asdf plugin update --all

link: ## Setup symlinks
	ln -nfs ~/dotfiles/.bash_profile ~/.bash_profile
	ln -nfs ~/dotfiles/.bashrc ~/.bashrc
	mkdir -p ~/.config/nvim/ && ln -nfs ~/dotfiles/init.vim ~/.config/nvim/init.vim
	mkdir -p ~/.gnupg/ && ln -nfs ~/dotfiles/gpg-agent.conf ~/.gnupg/gpg-agent.conf
	ln -nfs ~/dotfiles/.vim ~/.vim
	ln -nfs ~/dotfiles/.asdf ~/.asdf
	ln -nfs ~/dotfiles/.asdf/.asdfrc ~/.asdfrc
	ln -nfs ~/dotfiles/.asdf/.tool-versions ~/.tool-versions
	ln -nfs ~/dotfiles/.asdf/.default-npm-packages ~/.default-npm-packages
	ln -nfs ~/dotfiles/.asdf/.default-gems ~/.default-gems
	ln -nfs ~/Dropbox/.wakatime.cfg ~/.wakatime.cfg

clean: ## Delete symlinks and uninstall asdf plugins
	rm -rf ~/.bash_profile
	rm -rf ~/.config/nvim/init.vim
	rm -rf ~/.vim
	rm -rf ~/.asdf
	rm -rf ~/.asdfrc
	rm -rf ~/.tool-versions
	rm -rf ~/.default-npm-packages
	rm -rf ~/.default-gems
	rm -rf ~/.wakatime.cfg
	-asdf plugin remove ruby
	-asdf plugin remove nodejs
	-asdf plugin remove erlang
	-asdf plugin remove elixir
	-heroku plugins:uninstall heroku-accounts
