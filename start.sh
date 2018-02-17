#!/bin/bash

#test -n "$NIC" && sed -i "s/^#network_interface=.*/network_interface=$NIC/g" /etc/minidlna.conf

exec /usr/sbin/minidlnad -R -d
