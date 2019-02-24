#!/usr/bin/env bash
sudo pacman -S --noconfirm ufw
# Enable the start-up with the system
sudo systemctl enable ufw.service
# Turn on
sudo ufw enable
