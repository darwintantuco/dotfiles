# Guide

1. Update OSX Settings
1. Login to dropbox and rescuetime
1. Install from apps store:
   1. magnet
   1. spark
   1. menu world time
1. Install:
   1. freedom
   1. heyfocus
   1. CleanMyMac X
   1. vanilla
   1. iStat Menus
1. Sync vscode settings in microsoft account
1. Enable github signed commits
   - import gpg private key
     ```
     $ gpg --import github-private.key
     ```

## Magnet

### Update shortcuts

- update preferences
  - left: `^⌥ ,`
  - right: `^⌥ .`

## Poker 3

### Use capslock for `FN`

dip switch 3: on

## Wakatime

```
:WakaTimeApiKey
```

## Exercism

```
$ exercism configure --token=$TOKEN`
```

## Troubleshooting

1. `pinentry-mac` not prompting for passphrase
   - restart gpg from terminal:
     ```
     gpgconf --kill gpg-agent
     ```
