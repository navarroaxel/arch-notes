#!/usr/bin/env bash
pacman -Syu base-devel efibootmgr btrfs-progs openssh mtools linux-headers bash-completion
echo 'Enabling SSH service...'
systemctl enable sshd.service
# sudo pacman -S mtools dosfstools
