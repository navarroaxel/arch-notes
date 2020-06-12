#!/usr/bin/env bash
sudo systemctl enable fstrim.timer --now

# check timers
systemctl list-timers fstrim.timer --all
# check logs
sudo journalctl -u fstrim.timer
