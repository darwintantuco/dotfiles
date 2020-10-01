# Guide

1. Update OSX Settings
1. Login to dropbox and rescuetime
1. Install magnet and Spark from app store
1. Install freedom
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
