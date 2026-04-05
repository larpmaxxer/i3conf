#!/bin/bash
set -e

trap 'echo; echo "installation failed on command: $BASH_COMMAND"' ERR

echo "installing packages..."
echo

sudo pacman -S --needed --noconfirm git fish kitty i3 polybar feh rofi picom autotiling maim slop xclip

mkdir -p ~/.config/{picom,i3,kitty,polybar,rofi}

cp ~/i3conf/picom.conf ~/.config/picom/picom.conf
cp ~/i3conf/config ~/.config/i3/config
cp ~/i3conf/config.ini ~/.config/polybar/config.ini
cp ~/i3conf/config.rasi ~/.config/rofi/config.rasi
cp ~/i3conf/kitty.conf ~/.config/kitty/kitty.conf

echo "changing shell to fish"
echo
chsh -s /usr/bin/fish

echo
echo "installation complete. reboot."
