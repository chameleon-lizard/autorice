#!/bin/bash

echo ""
echo "##################################"
echo ""
echo "This script will ask for your password couple of times. Do not"
echo "worry, it is just for installing packages ;)"
echo ""
echo "##################################"
echo ""

# Updating the system
sudo pacman -Syyu --noconfirm
# Installing all packages
sudo pacman -S --noconfirm vim telegram-desktop thefuck i3 xfce4-terminal polybar ranger feh jq scrot xclip rofi zathura zathura-cb zathura-ps zathura-djvu zathura-pdf-mupdf neofetch nautilus gnome-terminal xorg-xbacklight compton lxappearance
pip install gdown pywal wpgtk --user

# Building i3lock from AUR
git clone https://aur.archlinux.org/i3lock-color-git.git
cd i3lock-color-git && makepkg -si && cd ..

# Installing telegram-palette-gen
git clone --depth 1 https://github.com/matteoguarda/telegram-palette-gen ~/.telegram-palette-gen
cd ~/.telegram-palette-gen
./telegram-palette-gen

# Downloading configs and putting them into right places
gdown https://drive.google.com/uc\?id\=16fPk625RYcJdgRjWF2cP9RrbutPdeTPO

echo ""
echo "##################################"
echo ""
echo "The script has successfully downloaded the archives and is"
echo "now unpacking everything. I decided not to specify -v to tar,"
echo "so it will look like the script suddenly froze, but it is actually"
echo "working inside ;)"
echo ""
echo "##################################"
echo ""

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
cp -r configs/.vim ~/
cp -r configs/genzathurarc ~/.local/bin/
cp -r configs/zathura ~/.local/bin/
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
