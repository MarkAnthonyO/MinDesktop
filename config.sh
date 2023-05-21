#!/bin/bash
commands() {
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
}

commands