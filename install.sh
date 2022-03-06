#!/bin/bash

source sub-unit-install/base.sh; install_base

source sub-unit-install/fcitx5.sh; install_fcitx5
source sub-unit-install/font.sh; install_font
source sub-unit-install/suckless.sh; install_suckless

source sub-unit-install/bash.sh; install_bash
source sub-unit-install/zsh.sh; install_zsh

source sub-unit-install/fzf.sh; install_fzf
source sub-unit-install/ranger.sh; install_ranger
source sub-unit-install/nvim.sh; install_nvim

source sub-unit-install/pikaur.sh; install_pikaur
source sub-unit-install/utils.sh; install_utils
source sub-unit-install/utils-aur.sh; install_utils_aur
