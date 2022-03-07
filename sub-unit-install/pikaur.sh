#!/bin/bash

function install_pikaur() {
    [ -n "${INSTALL_PIKAUR+1}" ] && return

    sudo pacman $PACMAN_FLAGS -S fakeroot pyalpm python-commonmark asp python-pysocks
    git clone --depth 1 https://aur.archlinux.org/pikaur.git ~/pikaur
    cd ~/pikaur
    sudo makepkg -fsri
    cd -
    rm -rf ~/pikaur

    export INSTALL_PIKAUR=1
}

install_pikaur