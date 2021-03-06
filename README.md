# Chameleon-lizard's pywal and wpgtk based autorice

![I'm sort of an artist myself](https://i.imgur.com/K6uE9VH.png)

Hiya! This script automatically rices your system. It uses pictures from your ~/Pictures/Wallpapers
folder and generates GTK and terminal colorschemes based on their colors. If you want to use your own 
wallpapers - just put them into the folder.

Bear in mind that this script will work on Manjaro (probably on Arch too, but I don't use Arch btw), so you can just use it as a guide if you are on a different distribution. Or you can start distrohopping :D

## How to use
I only tried the script on the clean install, but I don't see why won't it work on a not fresh system. To use it, you just clone the repo, cd into directory, make the script executable and launch it, or just invoke it using curl:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/chameleon-lizard/autorice/master/install.sh)"
```

## Keybindings

They are almost default, but I have added some new.
- Super+D is rofi
- Super+Shift+Z is generating a random colorscheme based on your wallpaper
- Super+Shift+T is reopening Telegram (it needs to be reloaded for the theme to change, also you have to manually change wallpapers)
- Super+Enter is xfce4-terminal
- Prtscr is screenshot of entire screen that is put into ~/Pictures/Screenshots and into your clipboard
- Shift+Prtscr is the same of above, but for a rectangular area
- Super+L is locking the screen using i3lock
- Alt+Space to change keyboard layout. Since I'm from Russia, it is configured to change between Russian and English layouts, but you can change it in the ~/.config/i3/config file. Just search for line 246 and change or delete it.
- Super+Shift+W is changing output to HDMI2. Since I found that i3wm in 4k is very small, I defaulted external resolution to 1080p. If you want, you can change it in ~/Scripts/autostart-screen.sh
- Super+Tab and Super+Shift+Tab to go to the right and left workspace

## Software used
- Zathura as PDF viewer
- xfce4-terminal as main terminal
- ranger as a cli file manager
- Nautilus as a gui file manager
- gnome-terminal as a terminal for Nautilus's open directory in terminal. If only I could use xfce4-terminal for everything!
- feh as picture viewer and wallpaper setter
- neofetch for fancy terminal screenshots
- my custom set of scripts for many things
- polybar
- i3wm, obviously
- compton as a composite manager
- i3lock-color
- thefuck as a helper if you have a habit of writing pyhton instead of python
- zsh as a shell
- OhMyZsh as zsh
- Modified nox theme as zsh theme

## TODO
- Creating a backup of all the user files and revert to previous rice feature
- Port this to Arch
- Port this to Debian-based distros
- Port this to Fedora (I will probably never do it, so help needed!)

## Possible thanks to
- [Deviantfero's WPGTK, his theme and icons](https://github.com/deviantfero/wpgtk)
- [Dylanaraps's Pywal](https://github.com/dylanaraps/pywal)
- [GideonWolfe's zathura-pywal](https://github.com/GideonWolfe/Zathura-Pywal)
- [Matgua's telegram-palette-gen](https://github.com/matgua/telegram-palette-gen)
- Pink Floyd, my laziness, my boredom and coffee
