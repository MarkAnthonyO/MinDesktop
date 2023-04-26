#!/bin/bash
command() {
  pacman -Sy
  mkdir ~/.config/i3/
  mkdir ~/.config/i3blocks/
  pacman -S i3
  pacman -S lightdm-gtk-greeter
  mv /i3/config ~/.config/i3/config
  mv /i3blocks/config ~/.config/i3blocks/config
  systemctl lightdm enable
  lightdm
}

command
