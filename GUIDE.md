# Guide

1. Update OSX Settings
1. Login to dropbox and rescuetime
1. Install from apps store:
   1. Magnet
   1. Be Focused Pro: Pomodoro Timer
   1. Spark
   1. MenuWorldTime
   1. MeetingBar
1. Install:
   1. Freedom
   1. Vanilla
   1. CleanMyMac X
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
