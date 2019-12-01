#!/bin/bash

echo ""
echo "##################################"
echo ""
echo "Pre-installation things :)"
echo ""
echo "##################################"
echo ""

# Basics
sudo pacman -S git base-devel cmake vim zsh

# Aurman
git clone https://aur.archlinux.org/aurman.git
cd aurman
makepkg -si
cd
rm -rf aurman

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ""
echo "##################################"
echo ""
echo "Installing the WM and all the beauties..."
echo ""
echo "##################################"
echo ""

# i3wm and other things
sudo pacman -S i3wm compton polybar feh imagemagick xsettingsd xfce4-terminal i3lock-color rofi pavucontrol kdeconnect

# WPGTK and pywal
pip3 install --user pywal wpgtk
wpg-install.sh

# Gestures
git clone https://github.com/Coffee2CodeNL/gebaar-libinput
cd gebaar-libinput
git checkout v0.0.5
git submodule update --init
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo make install
mkdir -p ~/.config/gebaar
usermod -a -G input $USER

# Telegram-palette-gen
git clone --depth 1 https://github.com/matteoguarda/telegram-palette-gen ~/.telegram-palette-gen
cd ~/.telegram-palette-gen
./telegram-palette-gen

echo ""
echo "##################################"
echo ""
echo "Copying configs..."
echo ""
echo "##################################"
echo ""

mv aurman ~/.config && \
mv gebaar ~/.config && \
mv gtk-2.0 ~/.config && \
mv gtk-3.0 ~/.config && \
mv gtk-4.0 ~/.config && \
mv htop ~/.config && \
mv i3 ~/.config && \
mv neofetch ~/.config && \
mv polybar ~/.config && \
mv ranger ~/.config && \
mv rofi ~/.config && \
mv wal ~/.config && \
mv wpg ~/.config && \
mv xfce4 ~/.config && \
mv zarhura ~/.config && \
mv .vimrc ~/ && \
mv .xinitrc ~/ && \
mv .ycm_extra_conf.py ~/ && \
mv .vim ~/ && \
mv .oh-my-zsh ~/ && \
mv Scripts ~/