#!/usr/bin/env bash
echo "Enter this package group selection: '2 3 5'"
pacman -S plasma
echo 'Installing XOrg...'
pacman -S xorg xorg-xinit
echo 'Config start KDE on boot...'
echo 'exec startplasma-x11' > /.xinitrc
echo 'Installing Plasma Desktop...'
pacman -S plasma-meta kde-gtk-config
systemctl enable sddm.service
