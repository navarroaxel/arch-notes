#!/usr/bin/env bash
if [[ ! $1 ]] ; then
    echo 'Error: Hostname as argument is required.'
    exit 1;
else
    HOSTNAME=$1
fi
echo $HOSTNAME > /etc/hostname
echo '127.0.0.1	localhost' >> /etc/hosts
echo '::1		localhost' >> /etc/hosts
echo "127.0.1.1	${HOSTNAME}.localdomain	${HOSTNAME}" >> /etc/hosts
