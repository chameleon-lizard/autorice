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
tar -xvf backup.tar.xz
cp -r gebaar i3 wpg xfce4 polybar rofi aurman gtk-2.0 gtk-3.0 gtk-4.0 htop neofetch ranger wal ~/.config
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r .vim .vimrc .zshrc .oh-my-zsh Scripts ..
sudo pacman -S thefuck i3 polybar ranger feh jq
pip install pywal --user
pip install wpgtk --user
wpg-install.sh
sudo pacman -S rofi
sudo pacman -S zathura zathura-cb zathura-ps zathura-djvu zathura-pdf-mupdf
sudo pacman -S neofetch
mkdir -p ~/Pictures
mkdir -p ~/Pictures/Wallpapers
wget https://unsplash.com/photos/vpM6b8lhX_U/download?force=true && mv 'download?force=true' ~/Pictures/Wallpepers/wallpaper.jpg
echo "Now logout and log into i3wm"
mv ~/autorice/color.py ~/.local/lib/python3.8/site-packages/wpgtk/data/color.py
sudo pacman -S nautilus
mkdir ~/University
cp ~/autorice/.ycm_extra_conf.py ~/University/
sudo pacman -S gnome-terminal