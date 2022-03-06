#!/bin/bash

function install_nvidia() {
    [ -n "${INSTALL_NVIDIA+1}" ] && return

    GPU_TYPE=`lspci -k | grep -A 2 -E "(VGA|3D)" | grep -oP "\[\K.*\]" | awk '{print $1}'`
    GPU_VERISON=$((`lspci -k | grep -A 2 -E "(VGA|3D)" | grep -oE "\[.*\]" | grep -oE "[0-9]*"`))
    if [ $GPU_TYPE = "GeForce" ]; then
        echo "################################### nvidia #################################"
        echo "if GPU Not Work, please watch https://wiki.archlinux.org/title/NVIDIA"
        echo "############################################################################"
        if [ ${GPU_VERSION}0 -ge 10000 ]; then
            sudo pacman -S nvidia-lts
        else
            sudo pacman -S linux-headers
            wget -O ~/nvidia.run https://cn.download.nvidia.cn/XFree86/Linux-x86_64/470.103.01/NVIDIA-Linux-x86_64-470.103.01.run
            chmod +x ~/nvidia.run
            sudo ~/nvidia.run
        fi
    else
        echo "################################### nvidia #################################"
        echo "Unkonw gpu type!"
        echo "if you are nvidia gpu, please watch https://wiki.archlinux.org/title/NVIDIA"
        echo "############################################################################"
    fi

    export INSTALL_NVIDIA=1
}