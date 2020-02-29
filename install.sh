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
sudo pacman -S vim thefuck i3 polybar ranger feh jq scrot xclip rofi zathura zathura-cb zathura-ps zathura-djvu zathura-pdf-mupdf neofetch nautilus gnome-terminal
pip install gdown pywal wpgtk --user

# Downloading configs and putting them into right places
gdown https://drive.google.com/uc\?id\=1FLgw5H2G6u973GHaNHwq6hjD5Vw6HE_Q  
tar -xf backup.tar.xz
cp -r .vim .vimrc .zshrc .oh-my-zsh Scripts ..
cp -r gebaar i3 wpg xfce4 polybar rofi aurman gtk-2.0 gtk-3.0 gtk-4.0 htop neofetch ranger wal ~/.config

# Installing WPGTK
wpg-install.sh

# Initializing wallpapers
mkdir -p ~/Pictures
mkdir -p ~/Pictures/Wallpapers
wget https://unsplash.com/photos/vpM6b8lhX_U/download?force=true && mv 'download?force=true' ~/Pictures/Wallpepers/wallpaper.jpg
mv ~/autorice/color.py ~/.local/lib/python3.8/site-packages/wpgtk/data/color.py

# Creating config for YCM
mkdir ~/University
cp ~/autorice/.ycm_extra_conf.py ~/University/

# Installing Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ""
echo "##################################"
echo ""
echo "Now logout and log into i3wm"
echo ""
echo "##################################"
echo ""