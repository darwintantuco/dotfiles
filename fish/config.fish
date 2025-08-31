fish_add_path /opt/homebrew/bin

set -x HOMEBREW_PREFIX $(brew --prefix)

# mise
mise activate fish | source

# apply snow dark colorscheme on terminal
if status --is-interactive
  sh ~/.vim/plugged/snow/shell/snow_dark.sh
end

# aliases
[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases

# generate ~/.gitconfig
git config --global color.ui auto
git config --global user.name "Darwin Tantuco"
git config --global user.email "dcrtantuco@gmail.com"
git config --global core.editor nvim
git config --global core.excludesfile $HOME/dotfiles/.gitignore_global
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff
git config --global push.default current
git config --global pull.rebase false
git config --global user.signingkey 1AD991AAE601CD85
git config --global commit.gpgsign true
git config --global checkout.defaultRemote origin
git config --global alias.ignore "update-index --skip-worktree"
git config --global alias.unignore "update-index --no-skip-worktree"

# vim
set -x EDITOR "nvim"
set -x USE_EDITOR $EDITOR
set -x VISUAL $EDITOR
set -x LC_ALL en_US.UTF-8

set -x HOMEBREW_NO_AUTO_UPDATE 1

# keybase / signed commits
set -x GPG_TTY $(tty)

# google cloud
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES

# Custom prompt
function fish_prompt --description 'Write out the prompt'
  set -l last_pipestatus $pipestatus
  set -lx __fish_last_status $status # Export for __fish_print_pipestatus.

  if not set -q __fish_git_prompt_show_informative_status
    set -g __fish_git_prompt_show_informative_status 1
  end
  if not set -q __fish_git_prompt_hide_untrackedfiles
    set -g __fish_git_prompt_hide_untrackedfiles 1
  end
  if not set -q __fish_git_prompt_color_branch
    set -g __fish_git_prompt_color_branch magenta --bold
  end
  if not set -q __fish_git_prompt_showupstream
    set -g __fish_git_prompt_showupstream informative
  end
  if not set -q __fish_git_prompt_color_dirtystate
    set -g __fish_git_prompt_color_dirtystate blue
  end
  if not set -q __fish_git_prompt_color_stagedstate
    set -g __fish_git_prompt_color_stagedstate yellow
  end
  if not set -q __fish_git_prompt_color_invalidstate
    set -g __fish_git_prompt_color_invalidstate red
  end
  if not set -q __fish_git_prompt_color_untrackedfiles
    set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
  end
  if not set -q __fish_git_prompt_color_cleanstate
    set -g __fish_git_prompt_color_cleanstate green --bold
  end

  set -l color_cwd
  set -l suffix
  if functions -q fish_is_root_user; and fish_is_root_user
    if set -q fish_color_cwd_root
      set color_cwd $fish_color_cwd_root
    else
      set color_cwd $fish_color_cwd
    end
    set suffix '#'
  else
    set color_cwd $fish_color_cwd
    set suffix '$'
  end

  # PWD
  set_color $color_cwd
  echo -n (prompt_pwd)
  set_color normal

  printf '%s ' (fish_vcs_prompt)

  set -l status_color (set_color $fish_color_status)
  set -l statusb_color (set_color --bold $fish_color_status)
  set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
  echo -n $prompt_status
  set_color normal

  echo -n "$suffix "
end
