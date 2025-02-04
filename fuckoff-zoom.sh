#! /usr/bin/env bash

wins=`xdotool search "as_toolbar"`
floating_bar_developer_mom_ass=-10000

for win in $wins
do
  xprop -id $win | grep WM_CLASS | grep zoom
  if [ $? = 0 ]; then
    if [ `cat /dev/shm/zoom_toolbar` = "fuckoffed" ]; then
      xdotool windowmove --sync $win 0 0
      echo "here" > /dev/shm/zoom_toolbar
      kdialog --title "Zoom bar: show" --passivepopup "" 1
    else
      xdotool windowmove --sync $win $floating_bar_developer_mom_ass $floating_bar_developer_mom_ass
      echo "fuckoffed" > /dev/shm/zoom_toolbar
      kdialog --title "Zoom bar: hide" --passivepopup "" 1
    fi
  fi
done
