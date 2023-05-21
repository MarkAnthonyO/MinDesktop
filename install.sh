#!/bin/bash
command() {
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
  sudo systemctl enable lightdm
  cd ..
  git clone https://github.com/MarkAnthonyO/PowerMenu.git
  cd MinDesktop/
}

command