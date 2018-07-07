#!/usr/bin/env bash
aurman -S snapd
sudo systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap
