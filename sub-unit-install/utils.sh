#!/bin/bash

function install_utils() {
    [ -n "${INSTALL_UTILS+1}" ] && return

    sudo pacman $PACMAN_FLAGS -S unzip
    sudo pacman $PACMAN_FLAGS -S cmus
    sudo pacman $PACMAN_FLAGS -S firefox chromium
    sudo pacman $PACMAN_FLAGS -S thunderbird
    sudo pacman $PACMAN_FLAGS -S code qtcreator

    sudo pacman $PACMAN_FLAGS -S openssh
    sudo systemctl enable sshd
    sudo systemctl start sshd

    export INSTALL_UTILS=1
}