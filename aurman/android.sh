#!/usr/bin/env bash
sed -i '/\[multilib\]/,/Include/s/^[ ]*#//' /etc/pacman.conf
// TODO Include GPG
sudo pacman -S lib32-gcc-libs
aurman -S aosp-devel
