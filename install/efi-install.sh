#!/usr/bin/env bash
mkdir /boot/efi
mount /dev/sda1 /boot/efi
grub-install --target=x86_64-efi  --bootloader-id=arch --recheck
