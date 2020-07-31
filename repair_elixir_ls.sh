#!/bin/sh

\cp ~/dotfiles/.asdf/.tool-versions ~/dotfiles/.vim/plugged/coc-elixir/elixir-ls/.tool-versions
cd ~/dotfiles/.vim/plugged/coc-elixir
yarn install && yarn prepack
cd ~/dotfiles
