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
  mkdir ~/.config/jgmenu/

  # Copy configurations for Desktop environment
  cp -r bspwm/bspwmrc ~/.config/bspwm/bspwmrc
  cp -r sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
  cp -r polybar/config.ini  ~/.config/polybar/config.ini
  cp -r dunst/dunstrc ~/.config/dunst/dunstrc
  cp -r picom.conf ~/.config/picom.conf
  cp -r jgmenu/jgmenurc ~/.config/jgmenu/
  cp -r jgmenu/menu.csv ~/.config/jgmenu/
}

command
