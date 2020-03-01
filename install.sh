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
sudo pacman -S --noconfirm base-devel vim telegram-desktop i3 xfce4-terminal polybar ranger feh jq scrot xclip rofi zathura zathura-cb zathura-ps zathura-djvu zathura-pdf-mupdf neofetch nautilus gnome-terminal xorg-xbacklight compton lxappearance kdeconnect blueman
pip install pywal wpgtk --user

# Building i3lock from AUR
git clone https://aur.archlinux.org/i3lock-color-git.git
cd i3lock-color-git && makepkg -si && cd ..

# Installing telegram-palette-gen
git clone --depth 1 https://github.com/matteoguarda/telegram-palette-gen ~/.telegram-palette-gen
cd ~/.telegram-palette-gen
./telegram-palette-gen
~/.telegram-palette-gen/telegram-palette-gen --wal

# Copying configs
cp -r configs/.config ~/
cp -r configs/.cache ~/
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
cp ~/autorice/configs/.ycm_extra_conf.py ~/

# Configuring vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim vimfile
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd ~/autorice

# Installing Zathura-pywal
mkdir -p ~/.config/Zathura
git clone https://github.com/GideonWolfe/Zathura-Pywal.git ~/.config/Zathura
cd ~/.config/Zathura/Zathura-Pywal && ./install.sh && cd ~/autorice

# Cloning scripts
git clone https://github.com/chameleon-lizard/Scripts.git ~/

# Installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/autorice/configs/nox-modded.zsh-theme ~/.oh-my-zsh/themes

echo ""
echo "##################################"
echo ""
echo "Now logout and log into i3wm. Also, to enable telegram's pywal theme, you have to manually "
echo "select it in ~/.cache/telegram-palette-gen, same for backgrounds."
echo ""
echo "##################################"
echo ""