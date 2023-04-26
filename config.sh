#!/bin/bash
commands() {
  mkdir ~/bg/
  mkdir ~/.config/
  mkdir ~/.config/i3/
  mkdir ~/.config/i3blocks/
  
  cp -r -f i3/config ~/.config/i3/config
  cp -r -f i3blocks/config ~/.config/i3blocks/config
  cp -r -f bg/bg.jpg ~/bg/bg.jpg
}

commands
