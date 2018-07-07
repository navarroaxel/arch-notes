#!/usr/bin/env bash
gpg --keyserver https://github.com/polygamma.gpg --receive-keys 465022E743D71E39
cd /tmp
git clone https://aur.archlinux.org/aurman.git
cd aurman
makepkg -si --noconfirm
