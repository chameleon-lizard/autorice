#!/bin/bash

echo ""
echo "##################################"
echo ""
echo "This script will ask for your password couple of times. Do not"
echo "worry, it is just for installing packages ;)"
echo ""
echo "##################################"
echo ""

# Cloning all the files into home directory
cd ~/
git clone https://github.com/chameleon-lizard/autorice.git
cd autorice

# Updating the system
sudo pacman -Syyu --noconfirm

# Installing all packages
sudo pacman -S --noconfirm base-devel vim thefuck telegram-desktop i3 xfce4-terminal polybar ranger feh jq scrot xclip rofi zathura zathura-cb zathura-ps zathura-djvu zathura-pdf-mupdf neofetch nautilus gnome-terminal xorg-xbacklight compton lxappearance kdeconnect blueman
pip install pywal wpgtk --user

# Building i3lock from AUR
git clone https://aur.archlinux.org/i3lock-color-git.git
cd i3lock-color-git && makepkg -si && cd ..

# Copying configs
cp -r ~/autorice/configs/.config ~/
cp -r ~/autorice/configs/.cache ~/
cp -r ~/autorice/configs/.fehbg ~/
cp -r ~/autorice/configs/.gtkrc-2.0 ~/
cp -r ~/autorice/configs/.vimrc ~/
mkdir -p ~/.local/share/themes/FlatColor
cp -r ~/autorice/configs/FlatColor ~/.local/share/themes/

# Installing WPGTK
wpg-install.sh
mkdir -p ~/.local/icons
wpg-install.sh -i

# Initializing wallpapers
mkdir -p ~/Pictures
cp -r configs/Wallpapers ~/Pictures/Wallpapers
cp ~/autorice/configs/color.py ~/.local/lib/python3.8/site-packages/wpgtk/data/color.py

# Creating config for YCM
cp ~/autorice/configs/.ycm_extra_conf.py ~/

# Installing telegram-palette-gen
git clone --depth 1 https://github.com/matteoguarda/telegram-palette-gen ~/.telegram-palette-gen
cd ~/.telegram-palette-gen
./telegram-palette-gen
~/.telegram-palette-gen/telegram-palette-gen --wal

# Installing Zathura-pywal
mkdir -p ~/.config/Zathura
git clone https://github.com/GideonWolfe/Zathura-Pywal.git ~/.config/Zathura
cd ~/.config/Zathura/ && ./install.sh && cd ~/autorice

# Cloning scripts
cd ~/
git clone https://github.com/chameleon-lizard/Scripts.git

# Installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/autorice/configs/nox-modded.zsh-theme ~/.oh-my-zsh/themes
cp ~/autorice/configs/.zshrc ~/

# Generating initial colorscheme
touch ~/.Xresources

rm ~/.config/wpg/templates/gtk2.0
rm ~/.config/wpg/templates/gtk3.0
rm ~/.config/wpg/templates/gtk3.20
ln -s ~/.local/share/themes/FlatColor/gtk-2.0/gtk.css ~/.config/wpg/templates/gtk2.0
ln -s ~/.local/share/themes/FlatColor/gtk-3.0/gtk.css ~/.config/wpg/templates/gtk3.0
ln -s ~/.local/share/themes/FlatColor/gtk-3.20/gtk.css ~/.config/wpg/templates/gtk3.20

sh ~/Scripts/random_wallpapers.sh

echo ""
echo "##################################"
echo ""
echo "Now logout and log into i3wm. Also, to enable telegram's pywal theme, you have to manually "
echo "select it in ~/.cache/telegram-palette-gen, same for backgrounds."
echo ""
echo "##################################"
echo ""
