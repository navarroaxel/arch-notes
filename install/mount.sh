#!/usr/bin/env bash
mkfs.fat -F32 /dev/nvme0n1p1 || { echo "Format EFI partition failed!"; exit 1; }
mkfs.btrfs /dev/volgroup0/lv0 || { echo "Format root LVM partition failed!"; exit 1; }
mount /dev/volgroup0/lv0 /mnt || { echo "Mount root LVM partition failed!"; exit 1; }
mkdir /mnt/boot  || { echo "Create boot partition mount point failed!"; exit 1; }
mount /dev/nvme0n1p1 /mnt/boot || { echo "Mount boot partition failed!"; exit 1; }
