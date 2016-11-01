#!/bin/sh

case "$1" in
    high)
        xbacklight -set 80 && xset s 300 300 +dpms && xautolock -exit; sleep 1 && xautolock -time 20 -locker "~/scripts/i3exit.sh suspend" &
        ;;
    low)
        xbacklight -set 4 && xset s 60 60 +dpms && xautolock -exit; sleep 1 && xautolock -time 3 -locker "~/scripts/i3exit.sh suspend" &
        ;;
    music)
        xset s 10 10 +dpms && xautolock -disable;
        ;;
    none)
        xset -dpms && xset s off && xautolock -disable;
        ;;
    *)
        echo "Usage: $0 {high|low|music|none}"
        exit 2
esac

exit 0
