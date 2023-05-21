#!/bin/bash
command() {
  # Instalation packages
  sudo pacman -Sy
  sudo pacman -S i3
  sudo pacman -S lightdm-gtk-greeter
  sudo pacman -S rofi
  sudo pacman -S feh
  sudo pacman -S tk
  sudo pacman -S noto-fonts
  sudo pacman -S noto-fonts-emoji
  sudo pacman -S noto-fonts-cjf
  sudo pacman -S ttf-font-awesome
  sudo pacman -S pulseaudio
  sudo pacman -S pavucontrol
  sudo pacman -S 
  sudo systemctl enable lightdm
  
  # Installation PowerMenu
  git clone https://github.com/MarkAnthonyO/PowerMenu.git  

  # Installation Paru AUR Helper
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/paru.git
  

  # Configurations
  mkdir ~/bg/
  mkdir ~/.config/
  mkdir ~/.config/i3/
  mkdir ~/.config/polybar/

  cp -r i3/config ~/.config/i3/config
  cp -r polybar/config.ini  ~/.config/polybar/config.ini
  cp -r bg/bg.jpg ~/bg/bg.jpg

  cd ..

  cd PowerMenu/
  mkdir ~/.config/PowerMenu/
  cp -r config/ ~/.config/PowerMenu/

  cd ..

  cd paru
  makepkg -si
}

command