#!/bin/bash
command() {
  # Instalation dependencies
  sudo pacman -Sy
  sudo pacman -S - < requirements.txt

  sudo systemctl enable lightdm
  xdg-user-dirs-gtk-update
  
  # Configurations
  mkdir ~/.config/bspwm/
  mkdir ~/.config/sxhkd/
  mkdir ~/.config/polybar/
  mkdir ~/.config/dunst/

  # Copy configurations for Desktop environment
  cp configFiles/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
  cp configFiles/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
  cp configFiles/polybar/config.ini  ~/.config/polybar/config.ini
  cp configFiles/dunst/dunstrc ~/.config/dunst/dunstrc
  cp configFiles/picom/picom.conf ~/.config/picom.conf
}

command
