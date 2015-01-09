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
xrandr --dpi 120
# start wicd in tray
wicd-client --tray &
#xrdb ~/.Xresources &
# key repeat faster
xset r rate 200 20
# set screen timeout 4 minutes
xset s 240 240
# audio daemon
pulseaudio --start
# background
sh ~/.fehbg &
# set up the daemon for auto-mounting
pcmanfm -d &
# suspend and lock after 10 min
xautolock -time 10 -locker "~/scripts/i3exit.sh suspend" &

exec i3
