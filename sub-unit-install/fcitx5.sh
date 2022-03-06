#!/bin/bash

function install_fcitx5() {
    [ -n "${INSTALL_FCITX5+1}" ] && return

    sudo pacman -S fcitx5-im fcitx5-chinese-addons
    sudo pacman -S fcitx5-nord
    cp config/pam_environment/pam_environment ~/.pam_environment

    export INSTALL_FCITX5=1
}