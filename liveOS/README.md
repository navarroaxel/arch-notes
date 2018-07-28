# Arch live OS utils

* Enable SSH using `turn-on-ssh.sh`
* Adjust the root partition size on live OS `cowspace.sh <size=1G>`

## Download this scripts to Archlinux live
  After boot the liveOS you can download this scripts to Archlinux live

  ```bash
  pacman -Sy --noconfirm git
  git clone https://github.com/navarroaxel/arch-notes.git /notes
  ```

## Create USB flash installation media
  * BIOS and UEFI bootable using dd `dd.sh <iso-file=archlinux.iso> <block-device=/dev/sdb>`
