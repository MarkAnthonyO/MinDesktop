#!/bin/bash
command() {
  # Uninstall packages
  sudo pacman -Syu
  sudo pacman -Rsn tk noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-font-awesome otf-font-awesome xdg-desktop-portal-gtk xdg-user-dirs gnome-screenshot sxhkd nitrogen picom polybar dunst sddm python konsole yay
  rm -r yay/
  rm -r PowerMenu/
  rm -r ~/.config/PowerMenu/
  # Remove configurations
  rm -r ~/.config/bspwm/
  rm -r ~/.config/sxhkd/
  rm -r ~/.config/polybar/
  rm -r ~/.config/dunst/
  rm -r ~/.config/picom.conf

  cd PowerMenu/
  mkdir ~/.config/PowerMenu/
  cp -r config/ ~/.config/PowerMenu/
  cd ..
}

command
