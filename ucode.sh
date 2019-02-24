#!/usr/bin/env bash
# For intel processors with grub boot loader:
sudo pacman -S --noconfirm intel-ucode
sudo grub-mkconfig -o /boot/grub/grub.cfg
