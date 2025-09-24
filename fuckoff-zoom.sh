#! /usr/bin/env bash

wins=`xdotool search "as_toolbar"`
position_of_floating_bar_developer_mom=-10000

for win in $wins
do
  xprop -id $win | grep WM_CLASS | grep zoom
  if [ $? = 0 ]; then
    if [ `cat /dev/shm/zoom_toolbar` = "fuckoffed" ]; then
      xdotool windowmove --sync $win 0 0
      echo "here" > /dev/shm/zoom_toolbar
    else
      xdotool windowmove --sync $win $floating_bar_developer_mom_ass $floating_bar_developer_mom_ass
      echo "fuckoffed" > /dev/shm/zoom_toolbar
    fi
  fi
done
