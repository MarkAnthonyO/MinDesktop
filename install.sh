#!/bin/bash
command() {
  pacman -Sy
  pacman -S i3
  pacman -S lightdm-gtk-greeter
  pacman -S rofi
  pacman -S feh
  systemctl lightdm enable
  echo "You need restart the pc"
}

command
