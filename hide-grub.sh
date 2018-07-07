#!/usr/bin/env bash
echo '# achieve the fastest possible boot:' >> /etc/default/grub
echo 'GRUB_FORCE_HIDDEN_MENU="true"' >> /etc/default/grub

cp ./31_hold_shift /etc/grub.d/

chmod a+x /etc/grub.d/31_hold_shift
grub-mkconfig -o /boot/grub/grub.cfg
