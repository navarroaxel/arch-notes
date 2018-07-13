#!/usr/bin/env bash
ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
hwclock --systohc

sed -i 's/#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
locale-gen

echo 'LANG=en_US.UTF-8' > /etc/locale.conf
