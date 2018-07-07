#!/usr/bin/env bash
(
  echo g # create a new empty GPT partition table
  echo n # add a new partition
  echo # set partition number (default: 1)
  echo # first sector (accept default)
  echo '+300M' # size (300 MiB)
  echo t # change a partition type
  echo 1 # EFI partition type
  echo n
  echo # set partition number (default: 2)
  echo # first sector (accept default)
  echo '+400M' # size (400) MiB
  echo n
  echo # set partition number (default: 3)
  echo # first sector (accept default)
  echo # end sector (accept default)
  echo t
  echo 3 # partition to change type (default: <last>)
  echo 31 # LVM partition type
  echo w # write table to disk and exit
) | fdisk /dev/sda
