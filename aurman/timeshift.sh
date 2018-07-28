#!/usr/bin/env bash
echo 'Choose cronie as cron. Option 1'
aurman -S --noconfirm --noedit timeshift
sudo systemctl enable cronie.service
sudo systemctl start cronie.service
