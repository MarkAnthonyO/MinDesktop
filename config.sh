#!/bin/bash
commands() {
  mkdir ~/.config
  mkdir ~/.config/i3/
  cp -r i3/ ~/.config/i3/
  cp i3blocks/config ~/.config/i3blocks/config
}
