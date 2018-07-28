#!/usr/bin/env bash
pvcreate --dataalignment 1m /dev/mapper/lvm  || { echo "Initialize physical volume for use LVM failed!"; exit 1; }
vgcreate volgroup0 /dev/mapper/lvm || { echo "Create volume group failed!"; exit 1; }
lvcreate -l 100%FREE volgroup0 -n lv0  || { echo "Create logical volume failed!"; exit 1; }
#lvcreate -L 100GB volgroup0 -n lv_root
#lvcreate -L 250GB volgroup0 -n lv_home
echo 'Running modprobe...'
modprobe dm_mod  || { echo "Add module dm_mod to Kernel failed!"; exit 1; }
vgscan  || { echo "Search volume groups failed!"; exit 1; }
vgchange -ay || { echo "Change volume group attributes failed!"; exit 1; }
