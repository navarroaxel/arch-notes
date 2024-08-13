#!/usr/bin/env bash
sudo systemctl enable --now fstrim.timer

# check timers
systemctl list-timers fstrim.timer --all
# check logs
sudo journalctl -u fstrim.timer
