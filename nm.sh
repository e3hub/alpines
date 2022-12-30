#!/bin/bash
name=$(ls /sys/class/net|grep -v lo)

for i in $name
do
ip link set  $i up
dhclient  -pf /run/if-$i $i
done
