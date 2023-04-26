#!/bin/bash
command() {
  pacman -Sy
  mkdir .config/
  pacman -S i3
  pacman -S lightdm
  mv i3/config ~/.config/i3/config
  mv i3blocks/config ~/.config/i3blocks/config
  sudo lightdm
}

command
