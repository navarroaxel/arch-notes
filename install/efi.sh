#!/usr/bin/env bash
mkdir /boot/efi || { echo "Create EFI partition mount point failed!"; exit 1; }
mount /dev/sda1 /boot/efi || { echo "Mount EFI partition failed!"; exit 1; }
grub-install --target=x86_64-efi  --bootloader-id=arch --recheck
# To prevent a (harmless) error message at boot time:
cp /usr/share/locale/en\@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
grub-mkconfig -o /boot/grub/grub.cfg
