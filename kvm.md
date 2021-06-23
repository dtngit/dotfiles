# install qemu and the virtual machine manager on the Artix Linux operating system (runit).
```
pacman -S qemu virt-manager libvirt-runit vde2 dnsmasq ebtables bridge-utils openbsd-netcat
```

# in /etc/libvirt/libvirtd.conf uncomment the following lines:
```
unix_sock_group = "libvirt"
unix_sock_rw_perms = "0770"
```

# add libvirt group
```
usermod -a -G libvirt $(whoami)
newgrp libvirt
```

# start the services libvirtd, virtlockd , virtlogd
```
ln -s /etc/runit/sv/libvirtd /etc/runit/runsvdir/default
ln -s /etc/runit/sv/virtlockd /etc/runit/runsvdir/default
ln -s /etc/runit/sv/virtlogd /etc/runit/runsvdir/default
```

# Libvirt did not detect any UEFI/OVMF firmware images installed on host
```
pacman -S edk2-ovmf
```

# Host OS
## autostart network
```
sudo virsh net-autostart default
sudo virsh net-start default
sudo virsh net-list --all
```

## autostart vm
```
sudo virsh list --all
sudo virsh autostart vmName
sudo virsh autostart --disable vmName
ls /etc/libvirt/qemu/autostart
```

# Guest OS
## shared clipboard (Display: Spice, Video: QXL)
```
pacman -S spice-vdagent spice-vdagent-runit
sudo ln -s /etc/runit/sv/spice-vdagentd /run/runit/service
sv status /run/runit/service/*
```
## edit xprofile
```
spice-vdagent &
```

## shared folder
### HOST
```
<filesystem type='mount' accessmode='mapped'>
    <source dir='/tmp/shared'/>
    <target dir='/hostshare'/>
</filesystem>
```
### GUEST
```
mkdir ~/hostfiles
sudo mount -t 9p -o trans=virtio /hostshare hostfiles/
```


# Artix autologin edit /etc/runit/sv/agetty-tty1/conf
```
if [ -x /sbin/agetty -o -x /bin/agetty ]; then
	# util-linux specific settings
	if [ "${tty}" = "tty1" ]; then
		GETTY_ARGS="--noclear --autologin <username>"
	fi
fi

BAUD_RATE=38400

```
