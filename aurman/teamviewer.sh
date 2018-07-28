#!/usr/bin/env bash
aurman -S --noconfirm --noedit teamviewer
# Uncomment to autostart teamviewerd on system boot.
# sudo systemctl enable teamviewerd.service
sudo systemctl start teamviewerd.service
