pacman -Sy
sudo su

mkdir .config/

pacman -S i3

pacman -S lightdm

sudo lightdm

mv i3/config ~/.config/i3/config
mv i3blocks/config ~/.config/i3blocks/config
