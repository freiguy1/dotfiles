#!/bin/sh
lock() {
    # Add a small delay to prevent suspend races
    # https://bugs.launchpad.net/ubuntu/+source/unity-2d/+bug/830348
    i3lock -i /home/freied/.config/wallpapers/grey_wash_wall.png -t && sleep 1
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
