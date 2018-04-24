#!/bin/sh

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:10:00 ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send "Low Battery" "$BATTINFO"
fi
