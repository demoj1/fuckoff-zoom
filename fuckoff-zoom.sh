#! /usr/bin/env bash

wins=`xdotool search "as_toolbar"`

for win in $wins
do
        xprop -id $win | grep WM_CLASS | grep zoom
        if [ $? = 0 ]; then
                if [ `cat /dev/shm/zoom_toolbar` = "fuckoffed" ]; then
                        xdotool windowmove --sync $win 0 0
                        echo "here" > /dev/shm/zoom_toolbar
                else
                        xdotool windowmove --sync $win -10000 -10000
                        echo "fuckoffed" > /dev/shm/zoom_toolbar
                fi
        fi
done
