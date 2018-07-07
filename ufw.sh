#!/usr/bin/env bash
pacman -S ufw
# Enable the start-up with the system
systemctl enable ufw.service
# Turn on
ufw enable
