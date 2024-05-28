#!/usr/bin/env bash

COLORSCHEME=Dracula

### AUTOSTART PROGRAMS ###
lxsession &
picom --daemon &
dunst &
# /usr/bin/emacs --daemon &
nm-applet &
# "$HOME"/.screenlayout/layout.sh &
bash ~/.config/polybar/launch.sh
sleep 1
conky -c "$HOME"/.config/conky/qtile/01/"$COLORSCHEME".conf || echo "Couldn't start Conky." &

### UNCOMMENT ONLY ONE OF THE FOLLOWING THREE OPTIONS! ###
# 1. Uncomment to restore last saved wallpaper
# xargs xwallpaper --stretch < ~/.cache/wall &
# 2. Uncomment to set a random wallpaper on login
#find "$HOME"/Downloads/wallpapers/ -type f | shuf -n 1 | xargs xwallpaper --maximize &
bash ~/repos/bash/system_management/change_wallpaper.sh
# 3. Uncomment to set wallpaper with nitrogen
# nitrogen --random $HOME/repos/wallpapers/ &
