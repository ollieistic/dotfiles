#!/bin/bash

CHOICE=$(echo -e " Lock\n Logout\n Reboot\n Shutdown" | rofi -dmenu -i -p "Power Menu:" -theme ~/.config/rofi/config.rasi)

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
