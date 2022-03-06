#!/bin/bash

function install_utils_aur() {
    [ -n "${INSTALL_UTILS_AUR+1}" ] && return

    source sub-unit-install/pikaur.sh
    install_pikaur

    pikaur -S netease-cloud-music
    pikaur -S foxitreader

    export INSTALL_UTILS_AUR=1
}