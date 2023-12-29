#!/bin/bash
command() {
  # Instalation fonts
  sudo pacman -Syu
  sudo pacman -S tk noto-fonts noto-fonts-emoji tf-jetbrains-mono-nerd otf-font-awesome polkit-gnnoto-fonts-cjk ttf-font-awesome tome xdg-desktop-portal-gtk xdg-user-dirs gnome-screenshot gnome-keyring sxhkd rofi nitrogen picom polybar dunst lightdm python jgmenu lightdm-gtk-greeter lightdm konsole pulseaudio pavucontrol fish neofetch bspwm

  sudo systemctl enable lightdm
  xdg-user-dirs-update
  
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
  cp -r .bashrc ~/.bashrc
  cp -r jgmenu/jgmenurc ~/.config/jgmenu/
  cp -r jgmenu/menu.csv ~/.config/jgmenu/
}

command
