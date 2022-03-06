function install_base() {
    [ -n "${INSTALL_BASE+1}" ] && return

    sudo pacman -S xorg xorg-xinit
    sudo pacman -S gtk3 webkit2gtk 
    sudo pacman -S alsa-utils alsa-plugins
    sudo pacman -S git openssh
    sudo pacman -S gcc make automake autoconf bison flex
    sudo pacman -S python python-pip rust
    sudo pacman -S wget curl aria2

    export INSTALL_BASE=1
}