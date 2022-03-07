#!/bin/bash
PACMAN_FLAGS="--noconfirm --needed"

source sub-unit-install/base.sh

source sub-unit-install/fcitx5.sh
source sub-unit-install/font.sh
source sub-unit-install/suckless.sh

source sub-unit-install/bash.sh
source sub-unit-install/zsh.sh

source sub-unit-install/fzf.sh
source sub-unit-install/ranger.sh
# source sub-unit-install/nvim.sh; install_nvim

source sub-unit-install/theme.sh
source sub-unit-install/pikaur.sh
# source sub-unit-install/utils.sh; install_utils
# source sub-unit-install/utils-aur.sh; install_utils_aur
