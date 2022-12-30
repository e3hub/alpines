 #!/usr/bin/env bash
 DIR=$(mktemp -d -p /mnt)
 INIT="/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR 
wget --no-check-certificate -qO- 'https://github.com/Janxget/Eiroot/releases/download/11.0/minirootfs.tar.gz' | tar -xz
 
systemctl --no-block switch-root $DIR $INIT
