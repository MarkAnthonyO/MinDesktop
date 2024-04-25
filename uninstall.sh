#!/bin/bash
command() {
  # Uninstall packages
  sudo pacman -Rsnc - < requirements.txt
  # Remove configurations
  rm -r ~/.config/bspwm/
  rm -r ~/.config/sxhkd/
  rm -r ~/.config/polybar/
  rm -r ~/.config/dunst/
  rm -r ~/.config/picom.conf
}

command
