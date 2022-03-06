#!/bin/bash

function install_fcitx5() {
    [ -n "${INSTALL_FCITX5+1}" ] && return

    sudo pacman $PACMAN_FLAGS -S fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt 
    sudo pacman $PACMAN_FLAGS -S fcitx5-chinese-addons
    sudo pacman $PACMAN_FLAGS -S fcitx5-nord
    cp config/pam_environment/pam_environment ~/.pam_environment

    export INSTALL_FCITX5=1
}