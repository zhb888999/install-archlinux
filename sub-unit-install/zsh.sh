#!/bin/bash

function install_zsh() {
    [ -n "${INSTALL_ZSH+1}" ] && return

    source sub-unit-install/font.sh
    install_font

    sudo pacman -S zsh
    bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cp config/zhsr/zshrc ~/.zshrc

    export INSTALL_ZSH=1
}