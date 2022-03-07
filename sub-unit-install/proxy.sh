#!/bin/bash

function install_proxy() {
    [ -n "${INSTALL_PROXY+1}" ] && return

    V2_URL=""
    sudo pacman $PACMAN_FLAGS -S clash
    mkdir -p ~/.config/clash/Country.mmdb
    wget -O ~/.config/clash/Country.mmdb https://cdn.jsdelivr.net/gh/alecthw/mmdb_china_ip_list@release/Country.mmdb
    if [ -n "$a" ];then
        wget -O ~/.config/clash/config.yaml $V2_URL
    else
        echo "############################# proxy ###########################"
        echo "V2_URL not set, download V2_URL to ~/.config/clash/config.yaml!"
        echo "###############################################################"
    if

    # TODO 
    # https://github.com/haishanh/yacd
    # docker pull haishanh/yacd

    export INSTALL_PROXY=1
}

install_proxy