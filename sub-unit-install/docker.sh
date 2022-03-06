#/bin/bash
function install_docker() {
    [ -n "${INSTALL_DOCKER+1}" ] && return

    sudo pacman -S docker
    sudo systemctl enable docker
    sudo groupadd docker
    sudo gpasswd -a mking docker
    sudo systemctl start docker

    export INSTALL_DOCKER=1
}