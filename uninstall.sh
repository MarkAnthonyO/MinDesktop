#!/bin/bash
command() {
  # Uninstall packages
  sudo pacman -Rsn tk noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-font-awesome otf-font-awesome xdg-desktop-portal-gtk xdg-user-dirs gnome-screenshot sxhkd nitrogen picom polybar dunst sddm python konsole
  # Remove configurations
  rm -r ~/.config/bspwm/
  rm -r ~/.config/sxhkd/
  rm -r ~/.config/polybar/
  rm -r ~/.config/dunst/
  rm -r ~/.config/picom.conf
}

command
