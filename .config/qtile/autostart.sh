#!/usr/bin/env bash 

/usr/bin/emacs --daemon &
nm-applet &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
feh --bg-scale ~/.dotfiles/.config/wallpaper.jpg &
xfce4-power-manager &
pamac-tray &
blueman-applet &
xautolock -time 10 -locker "betterlockscreen -l" &
/opt/piavpn/bin/pia-client &
dropbox &
picom &
caffeine &
redshift &
solaar -w hide &
dunst &
