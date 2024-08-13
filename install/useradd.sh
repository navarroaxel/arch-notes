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
systemctl enable --now systemd-homed
homectl create $LOGIN --real-name="$NAME" --member-of=wheel || { echo "Create user failed!"; exit 1; }
sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
