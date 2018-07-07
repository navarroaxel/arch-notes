#!/usr/bin/env bash
echo "Enter this package group selection: '2 3 5'"
pacman -S plasma
pacman -S xorg xorg-xinit
echo 'exec startkde' > /.xinitrc
pacman -S plasma-desktop breeze-gtk breeze-kde4 kde-gtk-config kdeplasma-addons
pacman -S sddm
systemctl enable sddm.service
