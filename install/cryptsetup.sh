#!/usr/bin/env bash
cryptsetup luksFormat /dev/sda3 || { echo "Format LUKS device failed!"; exit 1; }
echo 'Opening encrypted volume...'
cryptsetup open --type luks /dev/sda3 lvm  || { echo "Open LUKS device failed!"; exit 1; }
