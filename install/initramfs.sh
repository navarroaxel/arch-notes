#!/usr/bin/env bash
sed -i 's/block filesystems/block encrypt lvm2 filesystems/' /etc/mkinitcpio.conf
mkinitcpio -p linux
