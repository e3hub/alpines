 #!/usr/bin/env bash
 DIR=$(mktemp -d -p /mnt)
 INIT="/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR 
wget -qO- 'https://github.com/Bicsac/NetsDD/releases/download/1.0/alpine-rootfs.tar.gz' | tar -xz
 
systemctl --no-block switch-root $DIR $INIT
