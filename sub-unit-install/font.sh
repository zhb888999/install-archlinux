#!/bin/bash

function install_font() {
    [ -n "${INSTALL_FONT+1}" ] && return

    sudo pacman -S adobe-source-han-serif-otc-fonts ttf-fira-code ttf-nerd-fonts-symbols
    mkdir -p ~/Github
    git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/Github/nerd-fonts
    bash ~/Github/nerd-fonts/install.sh

    export INSTALL_FONT=1
}