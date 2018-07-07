#!/usr/bin/env bash
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/volgroup0/lv0
mount /dev/volgroup0/lv0 /mnt
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot
