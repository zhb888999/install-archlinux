#!/bin/bash

function install_nvim() {
    [ -n "${INSTALL_NVIM+1}" ] && return

    git clone --depth=1 https://github.com/junegunn/vim-plug.git
    mkdir -p ~/.config/nvim/autoload
    mv vim-plug/plug.vim ~/.config/nvim/autoload
    rm -rf vim-plug
    nvim -c PlugInstall

    export INSTALL_NVIM=1
}