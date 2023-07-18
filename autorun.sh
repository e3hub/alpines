 #!/usr/bin/env bash
setenforce 0 2>&-
 DIR=$(mktemp -d -p /mnt)
 INIT="/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR 
wget --no-check-certificate -qO- 'https://github.com/e3hub/alpines/releases/download/11.0/minirootfs.tar.gz' | tar -xz
 modprobe -a zram btrfs ext4 xfs vfat
systemctl  switch-root $DIR $INIT
