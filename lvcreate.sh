#!/usr/bin/env bash
pvcreate --dataalignment 1m /dev/mapper/lvm
vgcreate volgroup0 /dev/mapper/lvm
lvcreate -l 100%FREE volgroup0 -n lv0
#lvcreate -L 100GB volgroup0 -n lv_root
#lvcreate -L 250GB volgroup0 -n lv_home
echo 'Running modprobe...'
modprobe dm_mod
vgscan
vgchange -ay
