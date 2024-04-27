#!/bin/bash
command() {
  # Uninstall packages
  sudo pacman -Rsnc - < requirements.txt
  # Remove configurations
  rm -r ~/.config/bspwm
  rm -r ~/.config/sxhkd
  rm -r ~/.config/MinD
  rm -r ~/.config/picom
  
  rm ~/.fonts/PowerlineExtraSymbols.otf
}

command
