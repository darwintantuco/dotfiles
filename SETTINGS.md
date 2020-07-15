# OSX Settings

## General

Use dark menu bar and Dock: checked

## Dock

Size: Large

Magnification: Max

Minimize windows into application icon: checked

Animate opening applications: unchecked

Automatically hide and show the Dock: checked

Minimize widows using: Scale effect

## Keyboard

### Update modifier keys

Caps Lock Key: No Action

Control Key: Control

Option Key: Command

Command Key: Option

Function Key: Function

## Mouse

Scroll direction: Natural: unchecked

## Accessibility

### Display

Reduce motion: checked

## Sound

Show volume in menu bar: checked

## Date & Time

### Timezone

Time Zone: Philippine Standard Time

Closest City: Quezon City

### Clock

Use a 24-hour clock: checked

Show date: checked

## Bluetooth

Show Bluetooth in menubar: checked

## Users & Groups

Allow guests to log in to this computer: unchecked

## Magnet

### Update shortcuts

- update preferences
  - left: `^⌥ ,`
  - right: `^⌥ .`

## Stickies

### Hide from dock

1. Go to applications folder
1. Right click stickies
1. Click Choose Package Contents
1. Open Contents folder
1. Update Info.plist
1. Add

   ```
     <key>LSUIElement</key>
     <true/>
   ```

   above

   ```
   </dict>
   </plist>
   ```

## iTerm2

### Ignore command R

1. preferences
1. keys tabs
1. click + button
1. enter command + R
1. action: ignore

### Fix vim trackpad issue

1. preferences
1. advance
1. mouse
1. scroll wheel send arrow keys...
1. No -> Yes

### Fix key binding issue in tmux

1. preferences
1. profiles
1. Default
1. Keys Tab
1. Left ⌥ Key
   1. Normal -> Esc+

## Poker 3

### Use capslock for `FN`

dip switch 3: on
