#!/bin/bash

function install_ranger() {
    [ -n "${INSTALL_RANGER+1}" ] && return

    source sub-unit-install/fzf.sh

    sudo pacman $PACMAN_FLAGS -S ueberzug 
    sudo pacman $PACMAN_FLAGS -S poppler 
    sudo pacman $PACMAN_FLAGS -S ranger
    cp -r config/ranger/. ~/.config/ranger

    export INSTALL_RANGER=1
}

install_ranger