#!/bin/bash

function install_bash() {
    [ -n "${INSTALL_BASH+1}" ] && return

    cp config/bash/bashrc ~/.bashrc

    export INSTALL_BASH=1
}

install_bash