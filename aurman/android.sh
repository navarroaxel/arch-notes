#!/usr/bin/env bash
sudo sed -i '/\[multilib\]/,/Include/s/^[ ]*#//' /etc/pacman.conf
sudo pacman -Sy --noconfirm lib32-gcc-libs
aurman -S --noconfirm --noedit aosp-devel
