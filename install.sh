#!/bin/bash
command() {
  pacman -Sy
  mkdir ~/.config
  mkdir ~/.config/i3/
  mkdir ~/.config/i3blocks/
  pacman -S i3
  pacman -S lightdm-gtk-greeter
  pacman -S rofi
  cp /i3/config ~/.config/i3/config
  cp /i3blocks/config ~/.config/i3blocks/config
  systemctl lightdm enable
  lightdm
}

command
