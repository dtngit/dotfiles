# openssh
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
