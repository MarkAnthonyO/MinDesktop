#!/bin/bash
command() {
  pacman -Sy
  pacman -S i3
  pacman -S lightdm-gtk-greeter
  pacman -S rofi
  systemctl lightdm enable
  lightdm
}

command
