# Arch installation procedure

## Pre-Installation

For turn on SSH o adjust the root partition size on live OS check `liveOS` folder.

## Encrypted LVM on EFI

  1. Create partitions `fdisk.sh`
  2. Set up encryption `cryptsetup.sh`
  3. Set up LVM `lvcreate.sh`
  4. Format partitions and mount `mount.sh`
  5. Copy installation scripts folder to /mnt `cp /notes /mnt/notes -r`
  5. Install the base packages `pacstrap.sh`
  6. Install core packages and enable SSH `core.sh`
  7. Create initramfs with encrypted LVM `initramfs.sh`
  8. Set locale and localtime `locale-gen.sh`
  9. Set hostname `hostname.sh <hostname>`
  10. Set root password `passwd` (remove after boot)
  11. Add encrypted device to `GRUB_CMDLINE_LINUX_DEFAULT`:
    * Open `nano /etc/default/grub`
    * Add `cryptdevice=<partition=/dev/sdb3>:volgroup0`
  12. Optionally: You can use predictable network interface names (eth0, wlan0, etc)
    * Add `GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"`
  13. Install EFI system partition and GRUB2 `efi.sh`
  14. Create swapfile `swapfile.sh <size=24G>`
  15. Create user `useradd.sh <login> <name>`
  16. Install tools `tools.sh`
  17. Install Desktop Environment (GNOME, KDE Plasma, Xfce, etc.)
  18. Exit
  19. Unmount the installation target `umount.sh`
  20. Reboot
