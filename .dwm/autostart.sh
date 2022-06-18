#! /bin/bash

/usr/bin/emacs --daemon &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
feh --bg-scale ~/.config/SunDracula.jpg &
pamac-tray &
clipit &
blueman-applet &
xautolock -time 10 -locker "betterlockscreen -l" &
/opt/piavpn/bin/pia-client &
dropbox &
picom &
redshift &
solaar -w hide &
