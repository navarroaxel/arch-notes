#!/usr/bin/env bash
if [[ ! $1 ]] ; then
    SIZE=24G
else
    SIZE=$1
fi
fallocate -l $SIZE /swapfile
chmod 600 /swapfile
mkswap /swapfile
echo '/swapfile none swap sw 0 0' | tee --append /etc/fstab
