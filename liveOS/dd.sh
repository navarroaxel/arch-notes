#!/usr/bin/env bash
if [[ ! $1 ]] ; then
    IF=archlinux.iso
else
    IF=$1
fi
if [[ ! $2 ]] ; then
    OF=/dev/sdb
else
    OF=$2
fi
echo "Coping $IF to $OF..."
sudo dd if=$IF of=$OF bs=4M conv=fdatasync status=progress && sync
