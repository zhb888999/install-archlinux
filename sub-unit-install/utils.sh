#!/bin/bash

function install_utils() {
    [ -n "${INSTALL_UTILS+1}" ] && return

    sudo pacman -S unzip
    sudo pacman -S cmus
    sudo pacman -S firefox chromium
    sudo pacman -S thunderbird
    sudo pacman -S code qtcreator

    export INSTALL_UTILS=1
}