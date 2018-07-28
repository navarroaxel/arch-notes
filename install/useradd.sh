#!/usr/bin/env bash
if [[ ! $1 ]] ; then
  echo 'Error: Login name is required.'
  exit 1;
else
    LOGIN=$1
fi
if [[ ! $2 ]] ; then
    echo 'Error: User name is required.'
    exit 1;
else
    NAME=$2
fi
useradd --groups wheel --shell /bin/bash --create-home --comment "$NAME" $LOGIN || { echo "Create user failed!"; exit 1; }
echo "$LOGIN ALL=(ALL) ALL" >> /etc/sudoers
passwd $LOGIN || { echo "Create password for $LOGIN failed!"; exit 1; }
