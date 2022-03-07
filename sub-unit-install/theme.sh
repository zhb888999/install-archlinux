#!/bin/bash

function install_theme() {
    [ -n "${INSTALL_BASE+1}" ] && return

    sudo pacman $PACMAN_FLAGS -S arc-gtk-theme arc-icon-theme
    sudo pacman $PACMAN_FLAGS -S lxappearance

    export INSTALL_BASE=1
}

install_theme