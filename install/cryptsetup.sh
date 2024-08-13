#!/usr/bin/env bash
if [[ ! $1 ]] ; then
    PARTITION=/dev/nvme0n1p2
else
    PARTITION=$1
fi

cryptsetup luksFormat $PARTITION || { echo "Format LUKS device failed!"; exit 1; }
echo 'Opening encrypted volume...'
cryptsetup open --type luks $PARTITION lvm  || { echo "Open LUKS device failed!"; exit 1; }
