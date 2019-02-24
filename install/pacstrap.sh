#!/usr/bin/env bash
pacstrap /mnt base linux
genfstab -U -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt
