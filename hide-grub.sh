#!/usr/bin/env bash
echo '# achieve the fastest possible boot:' | sudo tee --append /etc/default/grub
echo 'GRUB_FORCE_HIDDEN_MENU="true"' | sudo tee --append /etc/default/grub

sudo cp ./31_hold_shift /etc/grub.d/

sudo chown root /etc/grub.d/31_hold_shift
sudo chmod a+x /etc/grub.d/31_hold_shift
sudo grub-mkconfig -o /boot/grub/grub.cfg
