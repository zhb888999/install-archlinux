#!/bin/bash

# copy suckless
cp -r /opt/dwm/. suckless-src/dwm
rm -rf suckless-src/dwm/.git

cp -r /opt/st/. suckless-src/st
rm -rf suckless-src/st/.git

cp -r /opt/slock/. suckless-src/slock
rm -rf suckless-src/slock/.git

cp -r /opt/slstatus/. suckless-src/slstatus
rm -rf suckless-src/slstatus/.git

# copy config
cp -r ~/.dwm/. config/dwm
cp -r ~/.fzf/. config/fzf
cp ~/.fzf.zsh config/fzf/fzf.zsh
cp ~/.fzf.bash config/fzf/fzf.bash
rm -rf config/fzf/.git

cp ~/.config/nvim/init.vim config/nvim/init.vim

cp ~/.config/ranger/. config/ranger
rm -rf config/ranger/plugins/ranger_devicons/.git
rm -rf config/ranger/plugins/ranger_devicons/.github

# copy shell
cp ~/.zshrc config/zsh/zshrc
cp ~/.bashrc config/bash/bashrc

# copy xmodmap
cp ~/.Xmodmap config/xmodmap/Xmodmap

# copy xinit
cp ~/.xinitrc config/xinit/xinitrc

# copy pam_environment
cp ~/.pam_environment config/pam_environment/pam_environment