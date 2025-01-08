#!/usr/bin/env bash

# disable xorg's screen saver because xidlehook will do it for us
xset s off

# Only exported variables can be used within the timer's command.
# export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# Run xidlehook
xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 90 seconds, undim if user becomes active` \
  --timer 90 \
    'brightnessctl --save s 1%' \
    'brightnessctl --restore' \
  `# Undim, lock, sleep after 5 more minutes` \
  --timer 300 \
    'brightnessctl --restore; systemctl suspend' \
    '' \
