default: help

help:
	@echo
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-].*?: .*?## .*$$' Makefile | sed 's#\\:#:#g' | awk 'BEGIN {FS = ": .*?## "}; {printf "\033[36m  %-20s\033[0m %s\n", $$1, $$2}'
	@echo

setup: link install ## Run link and install

reset: clean link install ## Run clean, link and install

install: ## Install vim plugins and mise tools
	mise trust ~/dotfiles/mise.toml
	export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac" && mise install
	nvim +PlugClean! +PlugInstall +qa
	heroku plugins:install heroku-accounts
	-createuser -s postgres || true
	-pip3 install neovim --upgrade
	mkdir -m 700 -p ~/.gnupg/ && echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf && echo 'use-agent' > ~/.gnupg/gpg.conf

update: ## Update vim plugins and mise tools
	nvim +PlugClean! +PlugInstall PlugUpdate +qa
	mise self-update
	mise upgrade

link: ## Setup symlinks
	ln -nfs ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
	ln -nfs ~/dotfiles/fish/fish_plugins ~/.config/fish/fish_plugins
	mkdir -p ~/.config/nvim/ && ln -nfs ~/dotfiles/init.vim ~/.config/nvim/init.vim
	ln -nfs ~/dotfiles/.vim ~/.vim
	mkdir -p ~/.config/mise/ && ln -nfs ~/dotfiles/mise.toml ~/.config/mise/config.toml
	ln -nfs ~/dotfiles/.default-gems ~/.default-gems
	ln -nfs ~/dotfiles/.default-npm-packages ~/.default-npm-packages

clean: ## Delete symlinks
	rm -rf ~/.config/nvim/init.vim
	rm -rf ~/.vim
	rm -rf ~/.config/mise/config.toml
	rm -rf ~/.default-gems
	rm -rf ~/.default-npm-packages
	-heroku plugins:uninstall heroku-accounts
