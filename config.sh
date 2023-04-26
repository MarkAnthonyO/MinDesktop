#!/bin/bash
commands() {
  mkdir ~/bg/
  mkdir ~/.config/
  mkdir ~/.config/i3/
  mkdir ~/.config/i3blocks/
  
  cp -r i3/config ~/.config/i3/config
  cp -r i3blocks/config ~/.config/i3blocks/config
  cp -r bg/waifu.jpg ~/bg/waifu.jpg
}

commands
