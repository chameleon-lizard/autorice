#!/bin/bash

echo ""
echo "##################################"
echo ""
echo "Pre-installation things :)"
echo ""
echo "##################################"
echo ""

# Updating the system
sudo pacman -Syyu --noconfirm
# Installing all packages
sudo pacman -S --noconfirm vim thefuck i3 xfce4-terminal polybar ranger feh jq scrot xclip rofi zathura zathura-cb zathura-ps zathura-djvu zathura-pdf-mupdf neofetch nautilus gnome-terminal xorg-xbacklight compton lxappearance
pamac install i3lock-color
pip install gdown pywal wpgtk --user

# Downloading configs and putting them into right places
gdown https://drive.google.com/uc\?id\=16fPk625RYcJdgRjWF2cP9RrbutPdeTPO
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
mkdir -p ~/.local/share/themes/FlatColor
cp -r configs/FlatColor ~/.local/share/themes/

# Installing WPGTK
wpg-install.sh
mkdir -p ~/.local/icons
wpg-install.sh -i

# Initializing wallpapers
mkdir -p ~/Pictures
cp -r configs/Wallpapers ~/Pictures/Wallpapers
cp ~/autorice/configs/color.py ~/.local/lib/python3.8/site-packages/wpgtk/data/color.py

# Creating config for YCM
mkdir -p ~/University
cp ~/autorice/configs/.ycm_extra_conf.py ~/University/

echo ""
echo "##################################"
echo ""
echo "Now logout and log into i3wm"
echo ""
echo "##################################"
echo ""