--Place this file in your .xmonad/lib directory and import module Colors into .xmonad/xmonad.hs config
--The easy way is to create a soft link from this file to the file in .xmonad/lib using ln -s
--Then recompile and restart xmonad.

module Colors
    ( wallpaper
    , background, foreground, cursor
    , color0, color1, color2, color3, color4, color5, color6, color7
    , color8, color9, color10, color11, color12, color13, color14, color15
    ) where

-- Shell variables
-- Generated by 'wal'
wallpaper="/home/chameleon/.config/wpg/wallpapers/mountain.jpg"

-- Special
background="#101212"
foreground="#ceccc9"
cursor="#ceccc9"

-- Colors
color0="#101212"
color1="#5B6562"
color2="#6D746F"
color3="#7C8079"
color4="#86857B"
color5="#7A8583"
color6="#8F938E"
color7="#ceccc9"
color8="#908e8c"
color9="#5B6562"
color10="#6D746F"
color11="#7C8079"
color12="#86857B"
color13="#7A8583"
color14="#8F938E"
color15="#ceccc9"
