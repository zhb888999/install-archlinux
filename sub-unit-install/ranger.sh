#!/bin/bash

function install_ranger() {
    [ -n "${INSTALL_RANGER+1}" ] && return

    source sub-unit-install/fzf.sh
    install_fzf

    pacman -S ranger ueberzug poppler
    mkdir -p ~/.config/ranger/plugins
    git clone --depth 1 https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
    cp config/ranger/* ~/.config/ranger

    export INSTALL_RANGER=1
}