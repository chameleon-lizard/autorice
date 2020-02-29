#!/bin/bash

echo ""
echo "##################################"
echo ""
echo "Pre-installation things :)"
echo ""
echo "##################################"
echo ""

# Updating the system
sudo pacman -Syyu
# Installing all packages
sudo pacman -S vim thefuck i3 polybar ranger feh jq scrot xclip rofi zathura zathura-cb zathura-ps zathura-djvu zathura-pdf-mupdf neofetch nautilus gnome-terminal xorg-xbacklight
pamac install i3lock-color
pip install gdown pywal wpgtk --user

# Downloading configs and putting them into right places
gdown https://drive.google.com/uc\?id\=1zE61lPaaP0CrhPs9QmmLLsa0dyuc-Ubb
tar -xf configs.tar.xz
cp -r configs/.config ~/
cp -r configs/.cache ~/
cp -r configs/.cache ~/
cp -r configs/.oh-my-zsh ~/
cp -r configs/Scripts ~/
cp -r configs/.fehbg ~/
cp -r configs/.gtkrc-2.0 ~/
cp -r configs/.vimrc ~/
cp -r configs/.xinitrc ~/
cp -r configs/.Xresources ~/
cp -r configs/.zshrc ~/

# Installing WPGTK
wpg-install.sh

# Initializing wallpapers
mkdir -p ~/Pictures
mkdir -p ~/Pictures/Wallpapers
wget https://unsplash.com/photos/vpM6b8lhX_U/download?force=true && mv 'download?force=true' ~/Pictures/Wallpepers/wallpaper.jpg
mv ~/autorice/color.py ~/.local/lib/python3.8/site-packages/wpgtk/data/color.py

# Creating config for YCM
mkdir ~/University
mv ~/autorice/.ycm_extra_conf.py ~/University/

echo ""
echo "##################################"
echo ""
echo "Now logout and log into i3wm"
echo ""
echo "##################################"
echo ""