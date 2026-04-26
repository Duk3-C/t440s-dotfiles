#!/bin/bash

CHOICE=$(wofi --show dmenu -j --config ~/.config/wofi/power-config --style ~/.config/wofi/power-style.css << EOF
󰍃  Logout
󰁯  Reboot
󰐥  Shutdown
󰒲  Suspend
EOF
)

case "$CHOICE" in
    *Logout) hyprctl dispatch exit ;;
    *Reboot) systemctl reboot ;;
    *Shutdown) systemctl poweroff ;;
    *Suspend) systemctl suspend ;;
esac
