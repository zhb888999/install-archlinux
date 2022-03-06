#!/bin/bash
picom -b
fcitx5 -d
/bin/bash ~/.dwm/scripts/wallpaper-autochange.sh &
exec slstatus
