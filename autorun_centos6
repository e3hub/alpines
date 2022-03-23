 #!/usr/bin/env bash
 DIR=$(mktemp -d -p /mnt)
 INIT="/init"
 mount -t tmpfs rootfs -o size=100% $DIR
 
cd $DIR
wget -qO- 'https://github.com/cnddy/NetsDD/releases/download/2.0/centos6.tgz'|tar -xzv
systemctl --no-block switch-root $DIR $INIT
