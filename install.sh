#!/bin/bash
command() {
  # Instalation fonts
  sudo pacman -Syu
  sudo pacman -S tk
  sudo pacman -S noto-fonts
  sudo pacman -S noto-fonts-emoji
  sudo pacman -S noto-fonts-cjk
  sudo pacman -S ttf-font-awesome
  sudo pacman -S otf-font-awesome
  sudo pacman -S xdg-desktop-portal-gtk
  sudo pacman -S xdg-user-dirs
  sudo pacman -S gnome-screenshot
  sudo pacman -S sxhkd
  sudo pacman -S nitrogen
  sudo pacman -S picom
  sudo pacman -S polybar
  sudo pacman -S dunst
  sudo pacman -S gdm
  sudo pacman -S python

  sudo systemctl enable gdm
  xdg-user-dirs-update
  
  # Installation PowerMenu
  git clone https://github.com/MarkAnthonyO/PowerMenu.git  

  # Installation Yay AUR Helper
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..

  # Configurations
  mkdir ~/.config/
  mkdir ~/.config/bspwm/
  mkdir ~/.config/sxhkd/
  mkdir ~/.config/polybar/
  mkdir ~/.config/dunst/

  cp -r bspwm/bspwmrc ~/.config/bspwm/bspwmrc

  cp -r sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc

  cp -r polybar/config.ini  ~/.config/polybar/config.ini

  cp -r dunst/dunstrc ~/.config/dunst/dunstrc

  cp -r picom.conf ~/.config/picom.conf

  cd PowerMenu/
  mkdir ~/.config/PowerMenu/
  cp -r config/ ~/.config/PowerMenu/
  cd ..
}

command
