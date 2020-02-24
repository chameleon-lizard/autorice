#!/bin/bash

echo ""
echo "##################################"
echo ""
echo "Pre-installation things :)"
echo ""
echo "##################################"
echo ""

sudo pacman -Syyu
sudo pacman -S vim
git clone https://github.com/chameleon-lizard/autorice.git
cd autorice
cp -r gebaar i3 wpg xfce4 polybar rofi aurman gtk-2.0 gtk-3.0 gtk-4.0 htop neofetch ranger wal ~/.config
