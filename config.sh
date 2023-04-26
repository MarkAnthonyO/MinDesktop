#!/bin/bash
commands() {
  mkdir ~/.config
  mkdir ~/.config/i3/
  mkdir ~/.config/i3blocks/
  cp -r i3/config ~/.config/i3/config
  cp i3blocks/config ~/.config/i3blocks/config
}
