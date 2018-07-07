#!/usr/bin/env bash
# For intel processors with grub boot loader:
pacman -S intel-ucode
grub-mkconfig -o /boot/grub/grub.cfg
