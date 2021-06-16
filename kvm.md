# install qemu and the virtual machine manager on the Artix Linux operating system (runit).
pacman -S qemu virt-manager libvirt-runit vde2 dnsmasq ebtables bridge-utils openbsd-netcat

# in /etc/libvirt/libvirtd.conf uncomment the following lines:
unix_sock_group = "libvirt"
unix_sock_rw_perms = "0770"

# add libvirt group
usermod -a -G libvirt $(whoami)

newgrp libvirt

# start the services libvirtd, virtlockd , virtlogd
ln -s /etc/runit/sv/libvirtd /etc/runit/runsvdir/default

ln -s /etc/runit/sv/virtlockd /etc/runit/runsvdir/default

ln -s /etc/runit/sv/virtlogd /etc/runit/runsvdir/default


# Libvirt did not detect any UEFI/OVMF firmware images installed on host
pacman -S edk2-ovmf

# autostart network
sudo virsh net-autostart --network default

# autostart vm
sudo virsh list --all

sudo virsh autostart ArtixLinux-LARBS

sudo virsh autostart --disable ArtixLinux-LARBS

ls /etc/libvirt/qemu/autostart
