#!/usr/bin/env bash
if [[ ! $1 ]] ; then
  # 24GB in MiB
  SIZE=24576
else
  SIZE=$1
fi
dd if=/dev/zero of=/swapfile bs=1M count=$SIZE status=progress
chmod 600 /swapfile
mkswap /swapfile
echo '/swapfile none swap defaults 0 0' | tee --append /etc/fstab
