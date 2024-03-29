# dotfiles

current tools to get things done

## Overview

|   Name   |                  Description                  |
| :------: | :-------------------------------------------: |
|  neovim  |               main text editor                |
|   fish   |                 default shell                 |
| homebrew |           package manager for macOS           |
|   asdf   | manage ruby, node, elixir and erlang versions |
|  vscode  |             secondary text editor             |

checkout `Brewfile` for complete app list

## Requirements

macOS

## Setup

1. Use fish

   1. Add fish to the list of acceptable shells

      ```shell
      sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
      ```

   1. Use fish as default shell

      ```shell
      chsh -s /opt/homebrew/bin/fish
      ```

   1. Install fisher

      ```shell
      curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
      ```

      For more info check: [fisher](https://github.com/jorgebucaran/fisher)

   1. Install plugins from fish_plugins

      ```
      fish update
      ```

1. Install [homebrew](https://brew.sh/)
1. Configure SSH

   - [Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
   - [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

1. Execute

   ```shell
   $ cd
   $ git clone git@github.com:darwintantuco/dotfiles.git
   ```

1. Execute

   ```shell
   $ cd
   $ cd dotfiles
   $ caffeinate -i brew bundle --verbose
   ```

   Note: This will take a while and will prompt for password

1. Login on Dropbox app

1. Execute

   ```shell
   $ make setup
   ```

1. Update `.bashrc` with your name and email

   ```shell
   git config --global user.name "Your Name"
   git config --global user.email "Your Email"
   ```

1. (Optional) By default, signed commits are enabled. Update it in `.bashrc`
   - You may want to disable it by removing `git config --global commit.gpgsign true`
   - or update signingkey with your own key `git config --global user.signingkey your-signingkey`
