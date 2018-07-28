#!/usr/bin/env bash
sudo pacman -S kdeconnect
sudo ufw allow 1714:1764/udp
sudo ufw allow 1714:1764/tcp
sudo ufw reload
