#!/usr/bin/env bash
pacman -S networkmanager plasma-nm
systemctl disable dhcpcd
systemctl enable NetworkManager.service
