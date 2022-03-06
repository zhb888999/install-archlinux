#!/bin/bash

function install_fzf() {
    [ -n "${INSTALL_FZF+1}" ] && return

    sudo pacman -S fzf the_silver_searcher 
    cp -r config/fzf/. ~/.fzf
    mv ~/.fzf/fzf.bash ~/.fzf.bash
    mv ~/.fzf/fzf.zsh ~/.fzf.zsh

    export INSTALL_FZF=1
}