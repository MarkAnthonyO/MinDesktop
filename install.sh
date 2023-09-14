#!/bin/bash
command() {
  # Instalation fonts
  sudo pacman -Syu
  sudo pacman -S tk noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-font-awesome otf-font-awesome xdg-desktop-portal-gtk xdg-user-dirs gnome-screenshot sxhkd nitrogen picom polybar dunst sddm python konsole pulseaudio pavucontrol fish neofetch

  sudo systemctl enable sddm
  xdg-user-dirs-update
  
  # Configurations
  mkdir ~/.config/bspwm/
  mkdir ~/.config/sxhkd/
  mkdir ~/.config/polybar/
  mkdir ~/.config/dunst/
  mkdit ~/.config/jgmenu/

  # Copy configurations for Desktop environment
  cp -r bspwm/bspwmrc ~/.config/bspwm/bspwmrc
  cp -r sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
  cp -r polybar/config.ini  ~/.config/polybar/config.ini
  cp -r dunst/dunstrc ~/.config/dunst/dunstrc
  cp -r picom.conf ~/.config/picom.conf
  cp -r .bashrc ~/.bashrc
  cp -r jgmenu/ ~/.config/jgmenu/
}

command
