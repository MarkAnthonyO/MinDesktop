#!/bin/bash
command() {
  # Uninstall packages
  sudo pacman -Syu
  sudo pacman -Rsn tk noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-font-awesome otf-font-awesome xdg-desktop-portal-gtk xdg-user-dirs gnome-screenshot sxhkd nitrogen picom polybar dunst sddm python konsole yay
  sudo rm -r yay/
  sudo rm -r PowerMenu/
  sudo rm -r ~/.config/PowerMenu/
  # Remove configurations
  sudo rm -r ~/.config/bspwm/
  sudo rm -r ~/.config/sxhkd/
  sudo rm -r ~/.config/polybar/
  sudo rm -r ~/.config/dunst/
  sudo rm -r ~/.config/picom.conf
}

command
