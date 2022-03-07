#!/bin/bash

function install_zsh() {
    [ -n "${INSTALL_ZSH+1}" ] && return

    source sub-unit-install/font.sh

    sudo pacman $PACMAN_FLAGS -S zsh
    git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
    cp config/zsh/zshrc ~/.zshrc

    export INSTALL_ZSH=1
}

install_zsh