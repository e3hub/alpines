 #!/usr/bin/env bash
 DIR=$(mktemp -d -p /mnt)
 INIT="/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR 
wget -qO- 'https://github.com/Janxget/Eiroot/releases/download/11.0/alpine-rootfs.tar.gz' | tar -xzv
 
systemctl --no-block switch-root $DIR $INIT
