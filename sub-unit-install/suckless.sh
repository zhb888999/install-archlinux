#!/bin/bash

function install_suckless() {
    [ -n "${INSTALL_SUCKLESS+1}" ] && return

    source sub-unit-install/font.sh
    install_font

    sudo pacman $PACMAN_FLAGS -S feh picom dmenu

    sudo cp -r suckless-src/dwm/. /opt/dwm
    cd /opt/dwm
    sudo make clean install
    cd -
    cp -r config/dwm/. ~/.dwm

    sudo cp -r suckless-src/st/. /opt/st
    cd /opt/st
    sudo make clean install
    cd -

    sudo cp -r suckless-src/slock/. /opt/slock
    cd /opt/slock
    sudo make clean install

    sudo cp -r suckless-src/slstatus/. /opt/slstatus
    cd /opt/slstatus
    sudo make clean install
    cd -

    cp config/xinit/xinitrc ~/.xinitrc
    cp config/xmodmap/Xmodmap ~/.Xmodmap

    export INSTALL_SUCKLESS=1
}