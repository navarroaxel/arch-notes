#!/usr/bin/env bash
if [[ ! $1 ]] ; then
    SIZE=1G
else
    SIZE=$1
fi
mount -o remount,size=$SIZE /run/archiso/cowspace
