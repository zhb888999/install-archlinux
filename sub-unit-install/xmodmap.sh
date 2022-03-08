function install_xmodmap() {
    [ -n "${INSTALL_XMODMAP+1}" ] && return

    cp config/xmodmap/Xmodmap ~/.Xmodmap

    export INSTALL_XMODMAP=1
}

install_xmodmap