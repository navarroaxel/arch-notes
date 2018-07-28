#!/usr/bin/env bash
pacman -Syu base-devel grub efibootmgr dosfstools openssh mtools linux-headers bash-completion
echo 'Enabling SSH service...'
systemctl enable sshd.service
