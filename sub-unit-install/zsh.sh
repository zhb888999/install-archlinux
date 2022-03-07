#!/bin/bash

function install_zsh() {
    [ -n "${INSTALL_ZSH+1}" ] && return

    source sub-unit-install/font.sh

    sudo pacman $PACMAN_FLAGS -S zsh
    bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cp config/zsh/zshrc ~/.zshrc

    export INSTALL_ZSH=1
}

install_zsh