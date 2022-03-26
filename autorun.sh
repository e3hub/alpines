 #!/usr/bin/env bash
 DIR=$(mktemp -d -p /mnt)
 INIT="/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR 
wget -qO- 'https://gh.api.99988866.xyz/https://github.com/cnddy/ostool/releases/download/1.0/alpine-rootfs.cpio.gz' | gunzip -c | cpio --verbose -id
 
systemctl --no-block switch-root $DIR $INIT
