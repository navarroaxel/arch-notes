#!/usr/bin/env bash
aurman -S --noconfirm --noedit snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
