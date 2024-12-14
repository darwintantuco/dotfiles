# Guide

1. Update OSX Settings
1. Login to dropbox
1. Install from apps store:
   1. Magnet
   1. Be Focused Pro: Pomodoro Timer
   1. Spark
1. Install:
   1. iStat Menus
   1. TablePlus
   1. CleanMyMac X
   1. Freedom
   1. Vanilla
1. Sync vscode settings in microsoft account
1. Enable github signed commits
   - import gpg private key
     ```
     $ gpg --import github-private.key
     ```

## iTerm2

Reuse previous session's directory

- Preferences
- Profiles
- Working Directory
  - Advance Configuration

## Spotify

Start a private session to listen anonymously: turn on

## Spotlight

Prevent Spotlight from searching these locations:

- Add `Workspace` folder

## Docker

### General

Start Docker Desktop when you login: checked

Open Docker Dashboard at startup: unchecked

### Resources

CPUs: 4
Memory: 8.00 GB

## Magnet

### Update shortcuts

- update preferences
  - left: `^⌥ ,`
  - right: `^⌥ .`

## Poker 3

### Use capslock for `FN`

dip switch 3: on

## Ducky One 3 SF DayBreak

### Use capslock for `FN`

- press Fn + Alt + k for 5 seconds
- press capslock
- press escape

### Map arrow keys to `IJKL`

- switch to profile 2
  - Press Fn + Alt + 2
- start macro recording
  - Fn + Alt + Tab for 3 seconds

## Wakatime

```
:WakaTimeApiKey
```

## Exercism

```
$ exercism configure --token=$TOKEN`
```

## UTM

### Fix network issue / no internet

Network -> Network Mode -> Emulated VLAN

### Preferences

Invert Scrolling: checked

## Troubleshooting

1. `pinentry-mac` not prompting for passphrase
   - restart gpg from terminal:
     ```
     gpgconf --kill gpg-agent
     ```

## eBIRForms

### Backup tax returns

- open eBIRForms folder
- backup
  - IAF_RDO_Copy
  - profile
  - savefile
