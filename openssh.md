# openssh
## Install the SSH Server on Artix Linux
```
sudo pacman -S openssh-runit
```
## Install the SSH Server on Arch Linux
```
sudo pacman -S openssh
```
## Start the Open SSH server
```
sudo systemctl status sshd
sudo systemctl start sshd
sudo systemctl status sshd
```
## Automatically start the SSH server
```
sudo systemctl enable sshd
```
## Joining the SSH server at a client
```
ssh USERNAME@IP_ADDRESS
```
## push to another host
sftp user@hostname
put filename target_directory
get filename
## To get the complete directory, instead use
get -r secret_files/
