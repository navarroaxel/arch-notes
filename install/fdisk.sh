#!/usr/bin/env bash
(
  echo g # create a new empty GPT partition table
  echo n # add a new partition
  echo # set partition number (default: 1)
  echo # first sector (accept default)
  echo '+500M' # size (500 MiB)
  echo t # change a partition type
  echo 1 # EFI partition type
  echo n
  echo # set partition number (default: 3)
  echo # first sector (accept default)
  echo # end sector (accept default)
  echo t
  echo # partition to change type (default: <last>)
  echo 31 # LVM partition type
  echo w # write table to disk and exit
) | fdisk /dev/nvme0n1
