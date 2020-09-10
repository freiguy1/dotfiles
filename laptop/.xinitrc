#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# increase dpi from default 96
xrandr --dpi 160
# start wicd in tray
wicd-client --tray &
#xrdb ~/.Xresources &
# key repeat faster
xset r rate 200 20
# set powersaving to low power
~/scripts/powersave.sh low
# audio daemon
pulseaudio --start
# background
sh ~/.fehbg &
# set up the daemon for auto-mounting
pcmanfm -d &
# correct synaptics touchpad settings
synclient TapButton2=2 TapButton1=1 HorizTwoFingerScroll=1 HorizScrollDelta=200 VertScrollDelta=-200

exec i3
