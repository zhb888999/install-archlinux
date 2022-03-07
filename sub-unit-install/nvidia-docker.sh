function install_nvidia_docker() {
    [ -n "${INSTALL_NVIDIA_DOCKER+1}" ] && return

    source sub-unit-install/docker.sh
    source sub-unit-install/pikaur.sh
    source sub-unit-install/nvidia.sh

    pikaur -S nvidia-container-toolkit
    echo "####################################### nvidia-docker #############################################"
    echo "If nvidia-docker start error, please see below!"
    echo "set no-cgroups=true in file of /etc/nvidia-container-runtime/config.toml"
    echo 'add GRUB_CMDLINE_LINUX_DEFAULT="systemd.unified_cgroup_hierarchy=false" in file of /etc/default/grub'
    echo "####################################################################################################"

    export INSTALL_NVIDIA_DOCKER=1
}

install_nvidia_docker