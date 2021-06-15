# install qemu and the virtual machine manager on the Artix Linux operating system (runit).
pacman -S qemu virt-manager libvirt-runit vde2 dnsmasq ebtables bridge-utils openbsd-netcat

# configuration in /etc/libvirt/libvirtd.conf uncomment the following lines:
unix_sock_group = "libvirt"
unix_sock_rw_perms = "0770"

# add libvirt group
usermod -a -G libvirt $(whoami)

newgrp libvirt

# start the services libvirtd, virtlockd , virtlogd
ln -s /etc/runit/sv/libvirtd /etc/runit/runsvdir/default

ln -s /etc/runit/sv/virtlockd /etc/runit/runsvdir/default

ln -s /etc/runit/sv/virtlogd /etc/runit/runsvdir/default
