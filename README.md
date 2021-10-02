下载回来就能启动了
直接上命令吧
`mount -t tmpfs rootfs -o size=100% /media/replace ; systemctl switch-root /media/replace /init`
