 #!/usr/bin/env bash
 DIR=$(mktemp -d -p /mnt)
 INIT="/sbin/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR 
wget -O- 'https://github.com/cnddy/ostool/releases/download/1.0/alpine-rootfs.tar.gz' | gunzip -c | cpio -id
 
systemctl --no-block switch-root $DIR $INIT
