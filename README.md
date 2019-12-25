# dotfiles

current tools to get things done

## Setup

1. Install Command Line Tools for Xcode
   ```
   $ xcode-select --install
   ```
1. Configure SSH
   - [Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
   - [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
1. ```
   $ cd
   $ git clone git@github.com:dcrtantuco/dotfiles.git
   ```

1. Install [homebrew](https://brew.sh/)
1. ```
   $ brew bundle
   ```

1. Install [asdf](https://github.com/asdf-vm/asdf)
   - [ruby](https://github.com/asdf-vm/asdf-ruby)
   - [nodejs](https://github.com/asdf-vm/asdf-nodejs)
   - [erlang](https://github.com/asdf-vm/asdf-erlang)
   - [elixir](https://github.com/asdf-vm/asdf-elixir)
1. ```
   $ bash symlink-setup.sh
   ```
1. ```
   $ asdf install
   ```

### Post Setup

#### vim

```
:PlugInstall
```

#### wakatime

```
:WakaTimeApiKey
```

##### deoplete

```
$ pip3 install --user pynvim
```

#### heroku-accounts

```
$ heroku plugins:install heroku-accounts
```

#### bash-completion

```
$ sudo curl -L https://raw.githubusercontent.com/docker/compose/1.23.2/contrib/completion/bash/docker-compose -o /usr/local/etc/bash_completion.d/docker-compose
```

#### exercism

```
$ exercism configure --token=$TOKEN`
```

## Experimental

### Neovim

1. Install neovim w/ python2 and python3 support
   - `brew install neovim`
   - `brew install python2`
   - `brew install python3`
   - `pip2 install neovim --upgrade`
   - `pip3 install neovim --upgrade`

## Settings

### iTerm2

#### Ignore command R

1. preferences
1. keys tabs
1. click + button
1. enter command + R
1. action: ignore

#### Fix vim trackpad issue

1. preferences
1. advance
1. mouse
1. scroll wheel send arrow keys...
1. No -> Yes

#### Fix key binding issue in tmux

1. preferences
1. profiles
1. Default
1. Keys Tab
1. Left ⌥ Key
   1. Normal -> Esc+

### Keyboard

#### use capslock for `FN`

- dip switch 3: `ON`

### Magnet

#### Update shortcut

- update preferences
  - left: `^⌥ ,`
  - right: `^⌥ .`

## Apps

- uTorrent
- magnet
- numi (https://numi.io)

## Retired

### Spacemacs

1. Install [Emacs and spacemacs](https://github.com/syl20bnr/spacemacs)
   - `git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d`
   - `brew tap d12frosted/emacs-plus`
   - `brew install emacs-plus`
   - `brew linkapps emacs-plus`
   - Install [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font
   - `emacs --insecure`
   - Restart
   - Check `~/.wakatime.cfg`, if it doesn't exist check `Dropbox` and [wakatime](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bweb-services/wakatime)

#### Post Install

- `sudo easy_install pip`
- `sudo pip install wakatime`
- `npm install -g tern`

### Terminal

- Update font
  - preference -> profiles -> text tab
  - use source code pro 12pt.
- Close window after "exit" command
  - preferences -> profiles -> shell tab
  - When the shell exits: close the window
