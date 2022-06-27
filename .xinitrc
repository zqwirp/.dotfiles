#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# xsetroot
while true; do
    SLEEP=30

    DATE=$(/usr/bin/date +"%A, %B %d | %H:%M")

    BATTERY_STATUS=$(/usr/bin/cat /sys/class/power_supply/BAT0/status)
    BATTERY_CAPACITY=$(/usr/bin/cat /sys/class/power_supply/BAT0/capacity)
    BATTERY="$BATTERY_STATUS $BATTERY_CAPACITY"

    MEMORY_TOTAL=$(free -m | awk 'NR%2==0 {print $2}')
    MEMORY_AVAIL=$(free -m | awk 'NR%2==0 {print $7}')
    MEMORY=$(( $MEMORY_TOTAL - $MEMORY_AVAIL ))

    xsetroot -name "$MEMORY Mb | $BATTERY % | $DATE | sleep $SLEEP | zqwirp"
    sleep $SLEEP
done &

exec dwm
