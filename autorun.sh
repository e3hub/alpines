 #!/usr/bin/env bash
 DIR=$(mktemp -d -p /mnt)
 INIT="/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR 
wget -qO- '' | gunzip -c | cpio --verbose -id
 
systemctl --no-block switch-root $DIR $INIT
