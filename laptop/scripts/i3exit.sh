#!/bin/sh
lock() {
    scrot /tmp/screen.png
    convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
    [[ -f $HOME/.config/wallpapers/lock-icon.png ]] && convert /tmp/screen.png $HOME/.config/wallpapers/lock-icon.png -gravity center -composite -matte /tmp/screen.png
    i3lock  -i /tmp/screen.png && sleep 1
    # i3lock -i /home/freied/.config/wallpapers/grey_wash_wall.png -t && sleep 1
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
