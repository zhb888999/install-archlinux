function install_base() {
    [ -n "${INSTALL_BASE+1}" ] && return

    sudo pacman $PACMAN_FLAGS -S xorg xorg-xinit
    sudo pacman $PACMAN_FLAGS -S gtk3 webkit2gtk 
    sudo pacman $PACMAN_FLAGS -S alsa-utils alsa-plugins
    sudo pacman $PACMAN_FLAGS -S gcc make automake autoconf bison flex pkg-config patch
    sudo pacman $PACMAN_FLAGS -S python python-pip rust
    sudo pacman $PACMAN_FLAGS -S wget curl aria2

    export INSTALL_BASE=1
}