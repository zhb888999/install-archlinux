#!/bin/bash

function install_font() {
    [ -n "${INSTALL_FONT+1}" ] && return

    sudo pacman $PACMAN_FLAGS -S adobe-source-han-serif-otc-fonts
    mkdir -p ~/.local/share/fonts
    tar zxvf font/FiraCodeNerdFont.tar.gz -C ~/.local/share/fonts

    export INSTALL_FONT=1
}

install_font