# Guide
1. Install [homebrew](https://brew.sh/)
1. Update vim
    - `brew install vim`
    - `:PlugInstall`
    - Add wakatime key
1. Configure SSH
    - [Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
    - [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
1. `git clone git@github.com:dcrtantuco/dotfiles.git`
1. `bash symlink-setup.sh`
1. Install postgres
    - `brew install postgres`
    - `brew services start postgresql`
1. Install [asdf](https://github.com/asdf-vm/asdf)
    - [ruby](https://github.com/asdf-vm/asdf-ruby)
    - [nodejs](https://github.com/asdf-vm/asdf-nodejs)
    - [erlang](https://github.com/asdf-vm/asdf-erlang)
    - [elixir](https://github.com/asdf-vm/asdf-elixir)
1. `asdf install`
1. Install [Emacs and spacemacs](https://github.com/syl20bnr/spacemacs)
    - `git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d`
    - `brew tap d12frosted/emacs-plus`
    - `brew install emacs-plus`
    - `brew linkapps emacs-plus`
    - Install [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font
    - `emacs --insecure`
    - Restart
    - Check `~/.wakatime.cfg`, if it doesn't exist check `Dropbox` and [wakatime](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bweb-services/wakatime)

## Vim
- `brew install the_silver_searcher`

## Spacemacs
- `sudo easy_install pip`
- `sudo pip install wakatime`
- `npm install -g tern`

## Rails
- sidekiq
- redis
    - `brew install redis`
    - `brew services start redis`

## Others
- Fix iterm2 settings
- Remap `Capslock` to `ESC`

## Apps
- chrome
- dropbox
- iterm2
- vlc
- spotify
- uTorrent
- synergy
- LICEcap
