##################################
#### Power Menu Custom Module ####
##################################

#!/bin/bash

CHOICE=$(echo -e " Lock\n Logout\n Reboot\n Shutdown" | rofi -dmenu -i -p "Power Menu:")

case "$CHOICE" in
  " Lock")
    swaylock
    ;;
  " Logout")
    hyprctl dispatch exit
    ;;
  " Reboot")
    systemctl reboot
    ;;
  " Shutdown")
    systemctl poweroff
    ;;
  *)
    exit 0
    ;;
esac
