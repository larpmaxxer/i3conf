#!/bin/bash

# install packages
sudo pacman -S --needed git fish kitty i3 polybar feh rofi picom

# change shell
chsh -s /usr/bin/fish

# create config folders
mkdir -p ~/.config/{picom,i3,kitty,polybar,rofi}

# copy configs
cp picom.conf ~/.config/picom/picom.conf
cp config ~/.config/i3/config
cp config.ini ~/.config/polybar/config.ini
cp config.rasi ~/.config/rofi/config.rasi
cp kitty.conf ~/.config/kitty/kitty.conf
