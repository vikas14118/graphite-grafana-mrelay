#!/usr/bin/env bash

#       Inmmobi Mrelay connect for email alert
mkdir -p /etc/resolvconf/resolv.conf.d
> /etc/resolvconf/resolv.conf.d/base
> /etc/resolvconf/resolv.conf.d/head
echo "nameserver 10.14.155.200" >> /etc/resolvconf/resolv.conf.d/base
echo "nameserver 10.14.67.100" >> /etc/resolvconf/resolv.conf.d/base
echo "nameserver 10.14.155.100" >> /etc/resolvconf/resolv.conf.d/base
cat /etc/resolvconf/resolv.conf.d/base >> /etc/resolv.conf

ifdown --exclude=lo -a
ifup --exclude=lo -a
cat /etc/resolv.conf

/usr/bin/supervisord --nodaemon --configuration /etc/supervisor/conf.d/supervisord.conf