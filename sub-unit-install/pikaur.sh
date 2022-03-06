#!/bin/bash

function install_pikaur() {
    [ -n "${INSTALL_PIKAUR+1}" ] && return

    git clone --depth 1 https://aur.archlinux.org/pikaur.git ~/pikaur
    cd ~/pikaur
    makepkg -fsri
    cd -
    rm -rf ~/pikaur

    export INSTALL_PIKAUR=1
}