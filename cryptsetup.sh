#!/usr/bin/env bash
cryptsetup luksFormat /dev/sda3
cryptsetup open --type luks /dev/sda3 lvm
