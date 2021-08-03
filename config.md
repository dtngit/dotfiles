# xfinity secret page
10.0.0.1/wireless_network_configuration-1.php

# VirtualBox host
sudo pacman -S virtualbox virtualbox-guest-iso

sudo gpasswd -a $USER vboxusers
sudo modprobe vboxdrv
yay -Syy
yay -S virtual-ext-oracle

# Virtual Machine resolution
sudo pacman -S virtualbox-guest-utils

# VM Shared Clipboard
killall VBoxClient
VBoxClient-all

# Boot from USB
Create a vmdk file
USB drive name is /dev/sdb
sudo vboxmanage internalcommands createrawvmdk -filename ~/vm/usb.vmdk -rawdisk /dev/sdb

Set permission to vmdk file
sudo chowm $USER:$USER ~/vm/usb.vmdk

add your user to "vboxusers" and "disk"
sudo usermod -a -G vboxusers dn
sudo usermod -a -G disk dn

remove USB drive first and reboot the system

add new hard disk
virtualbox chose "Use an existing virtual hard disk file"

existing vm
add new storage attachments > Hard Disk
VERR_ACCESS_DENIED [chmod 744 usb.vmdk] then reboot

# NETWORK
check gateway
ip route show

check dns
cat /etc/resolv.conf

# Software
pacman -S pcmanfm vifm

# setup theme
pacman -S lxappearance qt5ct
# arc them or arc-solid-gtk-them
pacman -S arc-gtk-theme arc-icon-theme
arcolinux-betterlockscreen-git
arcolinux-logout-git
arcolinux-logout-theme-git
arcolinux-volumeicon-git
arcolinux-wallpapers-git

# before "make clean install" remove "config.h" first
rm config.h

# xmonad fonts required
yay -S nerd-fonts-ubuntu-mono
yay -S nerd-fonts-source-code-pro
yay -S nerd-fonts-mononoki
yay -S otf-font-awesome-5-free

# xmonad install xterm then reboot
sudo pacman -S alacritty xterm
sudo pacman -S xmonad xmonad-contrib xmobar

# wifi problem failed to retrieving
sudo pacman -S brcm80211
or pacman -S broadcom-wl

nmcli dev status
nmcli radio wifi
nmcli dev wifi list
sudo nmcli dev wifi connect DN password "pass..."


# dhcpd
pacman -S dhcpcd
systemctl enable dhcpcd
systemctl start dhcpcd

# lightdm install
sudo pacman -S lightdm
sudo pacman -S lightdm-gtk-greeter
systemctl start lightdm.service && systemctl enable lightdm.service

sudo cp your-wallpaper.jpg /usr/share/backgrounds/lightdm.jpg

# lightdm avatar
sudo pacman -S accountsservice
cp dotfile/.face /var/lib/AccountsService/icons/dn.png
Edit or create the account settings file /var/lib/AccountsService/users/username, and add the lines
[User]
Icon=/var/lib/AccountsService/icons/dn.png

# set dual monitors
dual () {
    xrandr --output VGA-0 --primary --left-of HDMI-0 --output HDMI-0 --auto
}

# set single monitor
single () {
    xrandr --output HDMI-0 --off
}

# Download file from host
scp username@hostname:/path/to/remote/file /path/to/local/file

# openssh from host
sudo pacman -S openssh
sudo systemctl enable sshd.sevice
sudo systemctl start sshd.sevice
ssh username@hostname

# Remote Desktop
xfreerdp +clipboard /u:<username> /v:<hostname> /size:<WxH>
