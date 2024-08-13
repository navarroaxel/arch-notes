#!/usr/bin/env bash
echo 'Choose cronie as cron. Option 1'
aurman -S --noconfirm --noedit timeshift
sudo systemctl enable --now cronie.service
