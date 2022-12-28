name=$(ls /sys/class/net|grep -v lo)

for i in $name do
ip link set  $i up
dhclient -4 -pf /run/if-$i $i
done
