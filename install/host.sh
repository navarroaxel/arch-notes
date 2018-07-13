#!/usr/bin/env bash
HOSTNAME='myhostname'
echo $myhostname > /etc/hostname
echo '127.0.0.1	localhost' >> /etc/hosts
echo '::1		localhost' >> /etc/hosts
echo "127.0.1.1	${HOSTNAME}.localdomain	${HOSTNAME}" >> /etc/hosts
